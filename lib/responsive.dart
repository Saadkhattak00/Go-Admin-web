import 'package:flutter/material.dart';

class responsivelayout extends StatelessWidget {
  final Widget Mobile;
  final Widget tablet;
  final Widget desktop;

  const responsivelayout({
    required this.desktop,
    required this.Mobile,
    required this.tablet});

  static bool ismobile(BuildContext, context)=>
      MediaQuery.of(context).size.width<850;

  static bool istablet(BuildContext, context) =>
      MediaQuery.of(context).size.width<1100 &&
  MediaQuery.of(context).size.width>= 850;

  static bool isdesktop(BuildContext, context)=>
      MediaQuery.of(context).size.width >= 1100;
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery
        .of(context)
        .size;
    if (_size.width < 850)
      {
      return Mobile;
  }
    if (_size.width >= 850 && tablet != null) {
      return tablet;
    }
    else
      return desktop;
  }
}
