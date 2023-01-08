import 'package:flutter/material.dart';
import 'package:go_admin/Screens/DashBoard/Components/Header.dart';
import 'package:go_admin/Screens/Driver_Status/OnlineDriverSide.dart';
import 'package:go_admin/constants.dart';
import 'package:go_admin/Screens/DashBoard/Components/ButtonSide.dart';
import 'package:go_admin/responsive.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override


  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(Paddings.defaultpadding),
          child: Column(
            children: [
              const Header(),
              const SizedBox(height: Paddings.defaultpadding,),
              Padding(
                padding:  const EdgeInsets.all(Paddings.highpadding),
                child: Row(
                  children:  [
                    Expanded(
                      flex: 4,
                        child: responsivelayout(
                            desktop: MainButtonsSide(
                              childaspectratio: _size.width < 1400 ? 1.85 : 1.4 ,
                            ),
                            Mobile: MainButtonsSide(
                              childaspectratio: _size.width < 870 && _size.width > 350 ? 1.3 : 1,
                            ),
                            tablet: MainButtonsSide()),

                    ),
                    if (!responsivelayout.ismobile(BuildContext,context))
                    const SizedBox(width: Paddings.defaultpadding,),
                    // Online Divers Details
                    if(!responsivelayout.ismobile(BuildContext, context))
                    const Expanded(
                      flex: 2,
                        child: OnlineDriverSide(),
                   ),
                  ],
                ),
              ),
              if (responsivelayout.ismobile(BuildContext,context))
                const SizedBox(height: Paddings.defaultpadding,),
              // Online Divers Details
              if(responsivelayout.ismobile(BuildContext, context))
              OnlineDriverSide(),
            ],
          ),
        ),
      ),
    );
  }
}

