import 'package:flutter/material.dart';
import 'package:go_admin/Screens/DashBoard/Components/Card_Text.dart';
import 'package:go_admin/Screens/login/login_screen.dart';

import 'package:go_admin/constants.dart';
import 'package:xen_popup_card/xen_card.dart';


class Profile_Card_Details extends StatefulWidget {
  const Profile_Card_Details({Key? key}) : super(key: key);

  @override
  State<Profile_Card_Details> createState() => _Profile_Card_DetailsState();
}

class _Profile_Card_DetailsState extends State<Profile_Card_Details> {
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
                      Text("Admin Profile",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold, fontSize: 28)),
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
                  Container(
                    decoration: const BoxDecoration(


                        borderRadius: BorderRadius.all(Radius.circular(100),),
                        image: DecorationImage(image: AssetImage('assets/images/profile.jpg',),fit: BoxFit.cover)
                    ),
                    width: 200,
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,

                      children: [
                       Container(
                         child: Center(child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("Edit",style: TextStyle(color: Colors.black54,fontSize: 18),),
                         )),
                       )
                      ],
                    ),
                  ),

                  SizedBox(height: Paddings.defaultpadding,),
                  Card_Text(
                    title: "Name",
                    content: "Saad Ur Rehman",
                  ),
                  Card_Text(
                    title: "Email",
                    content: "Saadkhattak00@gmail.com",
                  ),
                  Card_Text(
                    title: "Password",
                    content: "*********",
                  ),
                  SizedBox(height: Paddings.highpadding,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 20,
                      primary: AppColors.primaryColor,
                    ),
                    onPressed: (){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => login_screen(),
                        ),
                      );
                    },
                    child: Text('Logout'),

                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ) ;
  }
}
