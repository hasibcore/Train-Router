import 'package:flutter/material.dart';
import 'train_search_page.dart';
import 'custom_widgets/app_bar.dart';
import 'custom_widgets/app_drawer.dart';

class train_details_page extends StatelessWidget{
  final String trainName;

  const train_details_page ({super.key,required this.trainName,});
  Widget stations(String station,String arri,String depart)
   {
    return Card(
      color:Color(0xFFBDE8E7),
      child: Padding(padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Text(
            station,style: const TextStyle( fontSize: 20,fontWeight: FontWeight.bold)
             ),

        Text("Arrival: $arri"),
        Text("Departure: $depart"),


      ],
      ),
      )
     );
   }
  @override
  Widget build(BuildContext context){
  return Scaffold(
  appBar: const CustomAppBar(title: 'Home'),
    drawer: const AppDrawer(),

    body:ListView(
      children: [
        if (trainName == "Upaban Express") ...[
          stations("Dhaka", "-", "10:00 PM"),
          stations("Biman Bandar", "10:23 PM", "10:28 PM"),
          stations("Narsingdi", "11:09 PM", "11:11 PM"),
          stations("Bhairab Bazar", "11:40 PM", "11:43 PM"),
          stations("Shayestaganj", "1:22 AM", "1:25 AM"),
          stations("Sreemangal", "2:09 AM", "2:11 AM"),
          stations("Kulaura", "3:08 AM", "3:11 AM"),
          stations("Maijgaon", "3:43 AM", "3:45 AM"),
          stations("Sylhet", "5:00 AM", "-"),
        ],

        if (trainName == "Jaintika Express") ...[
          stations("Dhaka", "-", "11:15 AM"),
          stations("Biman Bandar", "11:38 AM", "11:43 AM"),
          stations("Ashuganj", "12:55 PM", "12:57 PM"),
          stations("Brahmanbaria", "1:11 PM", "1:15 PM"),
          stations("Azampur", "1:37 PM", "1:39 PM"),
          stations("Mukundapur", "1:52 PM", "1:54 PM"),
          stations("Harashpur", "2:04 PM", "2:06 PM"),
          stations("Sylhet", "7:00 PM", "-"),
        ],

        if (trainName == "Kalni Express") ...[
          stations("Dhaka", "-", "2:55 PM"),
          stations("Biman Bandar", "3:17 PM", "3:22 PM"),
          stations("Brahmanbaria", "4:46 PM", "4:49 PM"),
          stations("Azampur", "5:12 PM", "5:14 PM"),
          stations("Harashpur", "5:34 PM", "5:36 PM"),
          stations("Shayestaganj", "6:12 PM", "6:15 PM"),
          stations("Sreemangal", "6:52 PM", "6:55 PM"),
          stations("Kulaura", "7:49 PM", "7:51 PM"),
          stations("Sylhet", "9:30 PM", "-"),
        ],
        if (trainName == "Paharika Express") ...[
          stations("Chattogram", "-", "7:50 AM"),
          stations("Feni", "9:14 AM", "9:16 AM"),
          stations("Nangalkot", "9:43 AM", "9:45 AM"),
          stations("Laksam", "10:00 AM", "10:03 AM"),
          stations("Cumilla", "10:26 AM", "10:28 AM"),
          stations("Kasba", "10:58 AM", "11:00 AM"),
          stations("Akhaura", "11:30 AM", "11:35 AM"),
          stations("Harashpur", "12:05 PM", "12:07 PM"),
          stations("Nayapara", "12:28 PM", "12:30 PM"),
          stations("Shayestaganj", "12:50 PM", "12:53 PM"),
          stations("Sreemangal", "1:30 PM", "1:35 PM"),
          stations("Bhanugach", "1:55 PM", "1:57 PM"),
          stations("Shamshernagar", "2:06 PM", "2:08 PM"),
          stations("Kulaura", "2:32 PM", "2:35 PM"),
          stations("Baramchal", "2:48 PM", "2:50 PM"),
          stations("Maijgaon", "3:04 PM", "3:06 PM"),
          stations("Sylhet", "3:55 PM", "-"),
        ],
      ],
    )

   );
 }
}