import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class data {
  AssetImage image;
  String title;
  data({ required this.image,required this.title,
  });

}

List ButtonList =[
data(
    image:AssetImage("assets/images/passenger1.png"),
    title: "Passengers"),
  data(
      image: AssetImage("assets/images/driver1.png"),
      title: "Captains"),
  data(
      image: AssetImage("assets/images/calendar.png"),
      title: "Today's Request"),
  data(
      image: AssetImage("assets/images/destination.png"),
      title: "Rides Details"),
];