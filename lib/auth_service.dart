import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // Sign up with email and password
  Future<User?> signUp(String email, String password, String name) async {
    try {
      UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,

      );
      await userCredential.user?.updateDisplayName(name);
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      print('Sign up error: ${e.code}');
      return null;
    }
  }

  // Log in with email and password
  Future<User?> login(String email, String password) async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      print('Login error: ${e.code}');
      return null;
    }
  }

  // Log out
  Future<void> logout() async {
    await _firebaseAuth.signOut();
  }

  // Get the currently authenticated user
  User? get currentUser {
    return _firebaseAuth.currentUser;
  }

  // Check whether a user is currently logged in
  bool get isLoggedIn {
    return _firebaseAuth.currentUser != null;
  }
}