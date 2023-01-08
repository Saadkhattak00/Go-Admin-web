import 'package:flutter/material.dart';
import 'package:go_admin/Screens/Driver_Status/Components/Chart.dart';
import 'package:go_admin/Screens/Driver_Status/Components/status_offline.dart';
import 'package:go_admin/Screens/Driver_Status/Components/status_online.dart';
import 'package:go_admin/constants.dart';



class OnlineDrivers extends StatelessWidget {
  const OnlineDrivers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: Paddings.defaultpadding,),
        const Text("Driver Status", style: TextStyle(color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600),),
        const SizedBox(height: Paddings.highpadding+20,),
        const Chart(),
        const SizedBox(height: Paddings.highpadding,),
        InkWell(
          onTap: () {  Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => status_online(),
            ),
          );
          },
          child: Status_card(
            Name: "Online Rides",
            num: 25,
          ),
        ),
        InkWell(
          onTap: () {  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => status_offline(),
              ),
          );
            },
          child: Status_card(
            Name: "Offline Rides",
            num: 25,
          ),
        )

      ],
    );
  }
}

class Status_card extends StatelessWidget {
  String Name;
  int num;
   Status_card({

    required this.Name,required this.num
  }) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: Paddings.highpadding,right: Paddings.highpadding),
      child: Container(
        margin: const EdgeInsets.only(top: Paddings.defaultpadding),
        padding: const EdgeInsets.all(Paddings.defaultpadding),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: AppColors.primaryColor.withOpacity(0.15)),
          borderRadius: const BorderRadius.all(
            Radius.circular(Paddings.defaultpadding),
          ),
        ),
        child: Row(
          children: [
            Text(Name,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
            const Spacer(),
            Text(num.toString(),style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
          ],
        ),
      ),
    );
  }
}
