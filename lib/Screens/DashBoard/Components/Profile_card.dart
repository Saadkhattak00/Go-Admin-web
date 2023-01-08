import 'package:flutter/material.dart';
import 'package:go_admin/Screens/DashBoard/Components/Profile_Card_Details.dart';
import 'package:go_admin/constants.dart';
import 'package:go_admin/responsive.dart';


class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: Paddings.defaultpadding),
      padding: const EdgeInsets.symmetric(
        vertical: Paddings.defaultpadding/2,
        horizontal: Paddings.defaultpadding,
      ),
      decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Colors.white)
      ),
      child: InkWell(
        onTap: () => showDialog(
            context: context, builder: (builder) => Profile_Card_Details()),
        child: Row(
          children: [
            Container(
              decoration: const BoxDecoration(

                  borderRadius: BorderRadius.all(Radius.circular(50),),
                  image: DecorationImage(image: AssetImage('assets/images/profile.jpg',),fit: BoxFit.cover)
              ),
              width: 30,
              height: 30,
            ),
            if (!responsivelayout.ismobile(BuildContext, context))
              const Padding( padding: const EdgeInsets.symmetric(horizontal: Paddings.defaultpadding/2),
                  child: Text("Saad Ur Rehman",style: TextStyle(color: Colors.white),)),
          ],
        ),
      ),
    );
  }
}

