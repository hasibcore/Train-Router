import 'package:flutter/material.dart';
import 'train_details_page.dart';
import 'custom_widgets/app_bar.dart';
import 'custom_widgets/app_drawer.dart';
class train_search_page extends StatefulWidget {
  const train_search_page({super.key});

  @override
  State<train_search_page> createState() => TrainSearchState();
}

class TrainSearchState extends State<train_search_page> {
  String search = "";

  List<String> trains = [
    "Kalni Express",
    "Upaban Express",
    "Paharika Express",
    "Jaintika Express",
    "Parabat Express",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Home'),
      drawer: const AppDrawer(),

      body: Column(
        children: [

          TextField(
            decoration: const InputDecoration(
              hintText: "Search train",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),

            onChanged: (value) {
              setState(() {
                search = value.toLowerCase();
              });
            },
          ),

          for (String train in trains)
            if (train.toLowerCase().contains(search))
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => train_details_page(
                        trainName: train,
                      ),
                    ),
                  );
                },

                child: Container(
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,

                      border: Border.all(

                     color: Colors.black38,

                      width: 10,
                    ),
                borderRadius: BorderRadius.circular(10),

                  ),

                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),


                  child: Text(train,style:  TextStyle( fontSize: 25,fontWeight: FontWeight.bold)),

                ),
              ),
        ],
      ),
    );
  }
}