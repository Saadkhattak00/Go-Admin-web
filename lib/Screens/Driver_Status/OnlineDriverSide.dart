import 'package:flutter/material.dart';
import 'package:go_admin/Screens/Driver_Status/Components/Online_Driver.dart';
import 'package:go_admin/Screens/Driver_Status/Components/status_online.dart';
import 'package:go_admin/constants.dart';


class OnlineDriverSide extends StatelessWidget {
  const OnlineDriverSide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color:AppColors.secondaryColor ,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      elevation: 20,
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        height: 500,
        child: Container(
          padding: const EdgeInsets.all(Paddings.defaultpadding),
          child: const OnlineDrivers(),
        ),
      ),
    );
  }
}