import 'package:flutter/material.dart';
import 'package:go_admin/Models/Button_Details_model.dart';
import 'package:go_admin/Screens/DashBoard/Components/MainButtons.dart';
import 'package:go_admin/constants.dart';
import 'package:go_admin/Models/Routes_Model.dart';



class MainButtonsSide extends StatelessWidget {
  final int crossaxiscount;
  final double childaspectratio;

 MainButtonsSide({
     this.childaspectratio = 1.85,
   this.crossaxiscount  = 2
  });

  @override

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Padding(
        padding: const EdgeInsets.all(Paddings.highpadding),
        child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: ButtonList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossaxiscount,
              crossAxisSpacing: Paddings.highpadding,
              mainAxisSpacing: Paddings.highpadding,
              childAspectRatio: childaspectratio,
            ), itemBuilder: (context,index)=> Material(
            color:AppColors.secondaryColor ,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            elevation: 20,
            child: InkWell(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              onTap: (){
                Navigator.of(context).push(pageRoute[index]);

              },
                child: Button(info: ButtonList[index])))
        ),
      ),

    );
  }
}
