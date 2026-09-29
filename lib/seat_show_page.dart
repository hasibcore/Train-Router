import 'main.dart';
import 'package:flutter/material.dart';
import 'custom_widgets/app_bar.dart';
import 'custom_widgets/app_drawer.dart';

class seat_show_page extends StatelessWidget {
  const seat_show_page({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Home'),
      drawer: const AppDrawer(),

      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ListView(
                children: [
                  //AC B
                  Container(

                    decoration: BoxDecoration(
                      color:Color(0xFFB3E5FC),
                      border: Border.all(
                        color: Colors.lightBlue,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    height: 200,
                    width: double.infinity,

                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [


                        Container(

                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black26,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),

                          height: 180,
                          width: 200,
                          child: Image.asset("assets/images/nonvip.jpg",
                            fit:BoxFit.cover
                          ),


                        ),

                        SizedBox(width: 2),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height:10),
                              Container(
                                height: 20,
                                width: 80,
                                color: Color(0xFF053050),
                                child: Text(
                                  " AC Berth :",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color:Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),

                              SizedBox(height: 10),

                              Text(
                                    "Air-conditioned sleeping accommodation night travel.Upper Berth"
                                    "And Lower berths are opened for 2 passengers to sleep.",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // AC Chair
                  SizedBox(),
                  Container(

                    decoration: BoxDecoration(
                      color:Color(0xFFB3E5FC),
                      border: Border.all(
                        color: Colors.lightBlue,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    height: 200,
                    width: double.infinity,

                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [


                        Container(

                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black26,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),

                          height: 180,
                          width: 200,
                          child: Image.asset("assets/images/nonvip.jpg",
                              fit:BoxFit.cover
                          ),


                        ),

                        SizedBox(width: 2),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height:10),
                              Container(
                                height: 20,
                                width: 80,
                                color: Color(0xFF053050),
                                child: Text(
                                  " AC Seat : ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color:Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),

                              SizedBox(height: 10),

                              Text(
                                  "An air-conditioned cabin with the upper berth stays folded and"
                                  "the lower berth can accommodate up to 3 passengers as seats",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  //FF cavin

                  Container(

                    decoration: BoxDecoration(
                      color:Color(0xFFB3E5FC),
                      border: Border.all(
                        color: Colors.lightBlue,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    height: 200,
                    width: double.infinity,

                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [


                        Container(

                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black26,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),

                          height: 180,
                          width: 200,
                          child: Image.asset("assets/images/ffseat.jpg",
                              fit:BoxFit.cover
                          ),


                        ),

                        SizedBox(width: 2),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height:10),
                              Container(
                                height: 20,
                                width: 80,
                                color: Color(0xFF053050),
                                child: Text(
                                  " FF Cavin :",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color:Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),

                              SizedBox(height: 10),

                              Text(
                                "Non Air-Conditioned sleeping accommodation night travel.Upper Berth"
                                    "And Lower berths are opened for 2 passengers to sleep",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

               // FF Chair

                  Container(

                    decoration: BoxDecoration(
                      color:Color(0xFFB3E5FC),
                      border: Border.all(
                        color: Colors.lightBlue,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    height: 200,
                    width: double.infinity,

                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [


                        Container(

                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black26,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),

                          height: 180,
                          width: 200,
                          child: Image.asset("assets/images/ffseat.jpg",
                              fit:BoxFit.cover
                          ),


                        ),

                        SizedBox(width: 2),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height:10),
                              Container(
                                height: 20,
                                width: 80,
                                color: Color(0xFF053050),
                                child: Text(
                                  " FF Seat :",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color:Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),

                              SizedBox(height: 10),

                              Text(
                                "Non air-conditioned cabin during the day, the upper berth stays"
                                 "folded and the lower berth can accommodate up to 3 passengers"
                                 " as seats.and a cooler environment.",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Snigdha

                  Container(

                    decoration: BoxDecoration(
                      color:Color(0xFFB3E5FC),
                      border: Border.all(
                        color: Colors.lightBlue,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    height: 200,
                    width: double.infinity,

                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [


                        Container(

                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black26,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),

                          height: 180,
                          width: 200,
                          child: Image.asset("assets/images/snigdha.jpg",
                              fit:BoxFit.cover
                          ),


                        ),

                        SizedBox(width: 2),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height:10),
                              Container(
                                height: 20,
                                width: 80,
                                color: Color(0xFF053050),
                                child: Text(
                                  " Snigdha :",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color:Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),

                              SizedBox(height: 10),

                              Text(
                                "An air-conditioned chair with comfortable seating "
                                    "and a cooler environment.",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  //shuvon chair

                  Container(

                    decoration: BoxDecoration(
                      color:Color(0xFFB3E5FC),
                      border: Border.all(
                        color: Colors.lightBlue,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    height: 200,
                    width: double.infinity,

                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [


                        Container(

                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black26,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),

                          height: 180,
                          width: 200,
                          child: Image.asset("assets/images/shuvonchair.jpg",
                              fit:BoxFit.cover
                          ),


                        ),

                        SizedBox(width: 2),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height:10),
                              Container(
                                height: 20,
                                width: 80,
                                color: Color(0xFF053050),
                                child: Text(
                                  " Shuvon Chair : ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color:Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),

                              SizedBox(height: 10),

                              Text(
                                "Non air-conditioned seat  ",

                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  //VIP

                  Container(

                    decoration: BoxDecoration(
                      color:Color(0xFFB3E5FC),
                      border: Border.all(
                        color: Colors.lightBlue,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    height: 200,
                    width: double.infinity,

                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [


                        Container(

                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black26,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),

                          height: 180,
                          width: 200,
                          child: Image.asset("assets/images/vip.jpg",
                              fit:BoxFit.cover
                          ),


                        ),

                        SizedBox(width: 2),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height:10),
                              Container(
                                height: 20,
                                width: 80,
                                color: Color(0xFF053050),
                                child: Text(
                                  " VIP 1st Class Cabin : ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color:Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),

                              SizedBox(height: 10),

                              Text(
                                "An air-conditioned VIP cabin with premium service."
                                    " Not for in general people.",
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}