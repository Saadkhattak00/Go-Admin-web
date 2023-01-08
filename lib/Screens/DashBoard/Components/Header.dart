import 'package:flutter/material.dart';
import 'package:go_admin/Screens/DashBoard/Components/Profile_card.dart';



class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text("Dashboard",style: TextStyle(color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600),),
        Spacer(),
        ProfileCard()
      ],
    );
  }
}
