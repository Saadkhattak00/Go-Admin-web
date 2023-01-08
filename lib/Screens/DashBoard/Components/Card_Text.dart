import 'package:flutter/material.dart';
import 'package:go_admin/constants.dart';



class Card_Text extends StatelessWidget {
  var title;
  var content;
  Card_Text({required this.title,required this.content, });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:Paddings.defaultpadding),
      child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$title: $content',style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold, fontSize: 18),
              textDirection: TextDirection.ltr,
              ),
            ],
          )),
    );
  }
}
