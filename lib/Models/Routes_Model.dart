import 'package:flutter/material.dart';
import 'package:go_admin/Screens/Passengers/Passengers_Details_Screen.dart';
import 'package:go_admin/Screens/Captains/Captains_Details_Screen.dart';
import 'package:go_admin/Screens/Rides/Rides_Details_Screen.dart';
import 'package:go_admin/Screens/Today_Requests/Today_Requests_Screen.dart';



List<Route> pageRoute = [
  MaterialPageRoute(builder: (_) => Passenger_Details()),
  MaterialPageRoute(builder: (_) => Captains_Details()),
  MaterialPageRoute(builder: (_) => Today_Requests()),
  MaterialPageRoute(builder: (_) => Ride_Details()),
];
