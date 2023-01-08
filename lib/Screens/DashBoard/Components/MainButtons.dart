import 'package:flutter/material.dart';
import 'package:go_admin/Models/Button_Details_model.dart';
import 'package:go_admin/constants.dart';




class Button extends StatelessWidget {
  final data info;

  Button({ required this.info,
  });

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: AppColors.secondaryColor,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: _size.width < 870 && _size.width > 350 ? 40 : 80,
              width:_size.width < 870 && _size.width > 350 ? 40 : 80,
              decoration: BoxDecoration(
                  image: DecorationImage(image: info.image)),
            ),
            SizedBox(height: Paddings.highpadding,),
            Text(info.title, style:  TextStyle(
              color: Colors.white,
              fontSize: _size.width < 870 && _size.width > 350 ? 11  : 20,
              fontWeight: FontWeight.w600,
            ),)
          ],
        ),
      ),
    );
  }
}
