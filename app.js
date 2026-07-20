/* ==========================================================================
   TrainRouter - Presentation Deck Interactive Controller (app.js)
   ========================================================================== */

document.addEventListener('DOMContentLoaded', () => {
  const slides = document.querySelectorAll('.slide');
  const totalSlides = slides.length;
  let currentSlide = 0;

  // UI Elements
  const stage = document.getElementById('presentation-stage');
  const counterEl = document.getElementById('slide-counter');
  const progressBar = document.getElementById('progress-bar');
  const prevBtn = document.getElementById('btn-prev');
  const nextBtn = document.getElementById('btn-next');
  const overviewBtn = document.getElementById('btn-overview');
  const fullscreenBtn = document.getElementById('btn-fullscreen');
  const overviewModal = document.getElementById('overview-modal');
  const overviewGrid = document.getElementById('overview-grid');
  const closeOverviewBtn = document.getElementById('btn-close-overview');

  // Responsive stage scaling function for fixed 1920x1080 16:9 ratio
  function resizeStage() {
    const windowWidth = window.innerWidth;
    const windowHeight = window.innerHeight;
    const targetRatio = 16 / 9;
    const windowRatio = windowWidth / windowHeight;

    let scale = 1;
    if (windowRatio > targetRatio) {
      scale = windowHeight / 1080;
    } else {
      scale = windowWidth / 1920;
    }

    if (stage) {
      stage.style.transform = `scale(${scale})`;
    }
  }

  window.addEventListener('resize', resizeStage);
  resizeStage();

  // Slide Navigation Function
  function goToSlide(index, direction = 'next') {
    if (index < 0 || index >= totalSlides) return;

    slides.forEach((slide, i) => {
      slide.classList.remove('active', 'exit-left', 'enter-right');
      if (i === currentSlide) {
        slide.classList.add(direction === 'next' ? 'exit-left' : 'enter-right');
      }
    });

    currentSlide = index;

    setTimeout(() => {
      slides.forEach((slide, i) => {
        if (i === currentSlide) {
          slide.classList.add('active');
        }
      });
    }, 50);

    updateUI();
  }

  function nextSlide() {
    if (currentSlide < totalSlides - 1) {
      goToSlide(currentSlide + 1, 'next');
    }
  }

  function prevSlide() {
    if (currentSlide > 0) {
      goToSlide(currentSlide - 1, 'prev');
    }
  }

  function updateUI() {
    if (counterEl) {
      const formattedCurrent = String(currentSlide + 1).padStart(2, '0');
      const formattedTotal = String(totalSlides).padStart(2, '0');
      counterEl.textContent = `${formattedCurrent} / ${formattedTotal}`;
    }

    if (progressBar) {
      const percentage = ((currentSlide + 1) / totalSlides) * 100;
      progressBar.style.width = `${percentage}%`;
    }

    // Update thumbnail highlights in overview modal
    const thumbs = document.querySelectorAll('.thumb-card');
    thumbs.forEach((thumb, idx) => {
      if (idx === currentSlide) {
        thumb.classList.add('active-thumb');
      } else {
        thumb.classList.remove('active-thumb');
      }
    });
  }

  // Event Listeners for Controls
  if (prevBtn) prevBtn.addEventListener('click', prevSlide);
  if (nextBtn) nextBtn.addEventListener('click', nextSlide);

  // Keyboard Shortcuts
  document.addEventListener('keydown', (e) => {
    if (e.target.getAttribute('contenteditable') === 'true') return;

    switch (e.key) {
      case 'ArrowRight':
      case 'Space':
      case 'PageDown':
        e.preventDefault();
        nextSlide();
        break;
      case 'ArrowLeft':
      case 'PageUp':
        e.preventDefault();
        prevSlide();
        break;
      case 'Home':
        e.preventDefault();
        goToSlide(0, 'prev');
        break;
      case 'End':
        e.preventDefault();
        goToSlide(totalSlides - 1, 'next');
        break;
      case 'o':
      case 'O':
        toggleOverview();
        break;
      case 'f':
      case 'F':
        toggleFullscreen();
        break;
      case 'Escape':
        if (overviewModal && overviewModal.classList.contains('active')) {
          toggleOverview();
        }
        break;
    }
  });

  // Overview Grid Generator
  function populateOverview() {
    if (!overviewGrid) return;
    overviewGrid.innerHTML = '';

    slides.forEach((slide, idx) => {
      const titleEl = slide.querySelector('.slide-title') || slide.querySelector('.divider-title');
      const titleText = titleEl ? titleEl.textContent : `Slide ${idx + 1}`;

      const card = document.createElement('div');
      card.className = `thumb-card ${idx === currentSlide ? 'active-thumb' : ''}`;
      card.innerHTML = `
        <div style="padding: 12px; font-size: 11px; font-weight: 700; color: #0F4C81; text-transform: uppercase;">${titleText}</div>
        <div class="thumb-label">Slide ${idx + 1}</div>
      `;

      card.addEventListener('click', () => {
        goToSlide(idx, idx > currentSlide ? 'next' : 'prev');
        toggleOverview();
      });

      overviewGrid.appendChild(card);
    });
  }

  function toggleOverview() {
    if (!overviewModal) return;
    const isActive = overviewModal.classList.contains('active');
    if (!isActive) {
      populateOverview();
      overviewModal.classList.add('active');
    } else {
      overviewModal.classList.remove('active');
    }
  }

  if (overviewBtn) overviewBtn.addEventListener('click', toggleOverview);
  if (closeOverviewBtn) closeOverviewBtn.addEventListener('click', toggleOverview);

  // Fullscreen Toggle
  function toggleFullscreen() {
    if (!document.fullscreenElement) {
      document.documentElement.requestFullscreen().catch(err => console.log(err));
    } else {
      if (document.exitFullscreen) {
        document.exitFullscreen();
      }
    }
  }

  if (fullscreenBtn) fullscreenBtn.addEventListener('click', toggleFullscreen);

  // Initial setup
  goToSlide(0);
  updateUI();
});
