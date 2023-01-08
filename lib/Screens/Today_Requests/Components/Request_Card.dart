import 'package:flutter/material.dart';
import 'package:go_admin/Screens/DashBoard/Components/Card_Text.dart';
import 'package:go_admin/constants.dart';
import 'package:xen_popup_card/xen_card.dart';

class Request_Card extends StatefulWidget {
  const Request_Card({Key? key}) : super(key: key);

  @override
  State<Request_Card> createState() => _Request_CardState();
}

class _Request_CardState extends State<Request_Card> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          XenPopupCard(
            cardBgColor: AppColors.secondaryColor,
            appBar: XenCardAppBar(
              color:AppColors.secondaryColor,
              shadow:  BoxShadow(color: Colors.transparent),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Request Detail",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold, fontSize: 28)),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(height: 1,
                    thickness: 1,
                    endIndent: 50,
                    indent: 50,
                    color: Colors.white38,)
                ],
              ) ,
            ),
            body: Container(
              child: Column(
                children: [
                  Card_Text(
                    title: "Name",
                    content: "Saad Ur Rehman",
                  ),
                  Card_Text(
                    title: "CNIC",
                    content: "17201-0680200-7",
                  ),
                  Card_Text(
                    title: "Phone",
                    content: "+923329295282",
                  ),
                  Card_Text(
                    title: "Vehicle Category",
                    content: "Sedan",
                  ),
                  Card_Text(
                    title: "Vehicle Model",
                    content: "2005",
                  ),
                  Card_Text(
                    title: "Vehicle Color",
                    content: "White",
                  ),
                  Card_Text(
                    title: "license No",
                    content: "EAS212313",
                  ),

                  SizedBox(height: Paddings.highpadding,),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         elevation: 20,
                         primary: Colors.green,
                       ),
                       onPressed: (){},
                       child: Text('Accept'),
                     ),
                     SizedBox(width: 20,),
                     ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         elevation: 20,
                         primary: Colors.red,
                       ),
                       onPressed: (){},
                       child: Text('Reject'),
                     ),
                   ],
                 )
                ],
              ),
            ),
          ),
        ],
      ),
    ) ;;
  }
}
