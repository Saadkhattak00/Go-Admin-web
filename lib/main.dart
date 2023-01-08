import 'package:flutter/material.dart';
import 'package:go_admin/Screens/Captains/Captains_Details_Screen.dart';
import 'package:go_admin/Screens/DashBoard/Dashoard_screen.dart';
import 'package:go_admin/Screens/Driver_Status/Components/status_offline.dart';
import 'package:go_admin/Screens/Driver_Status/Components/status_online.dart';
import 'package:go_admin/Screens/Driver_Status/OnlineDriverSide.dart';
import 'package:go_admin/Screens/Passengers/Passengers_Details_Screen.dart';
import 'package:go_admin/Screens/Rides/Rides_Details_Screen.dart';
import 'package:go_admin/Screens/Today_Requests/Today_Requests_Screen.dart';
import 'package:go_admin/Screens/login/login_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:
          login_screen()
      //status_offline()
      //status_online()
      //Dashboard()
     // Today_Requests()
      //Passenger_Details()
      //Ride_Details()
     // Captains_Details()
    );
  }
}
