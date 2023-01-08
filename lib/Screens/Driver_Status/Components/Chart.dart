import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:go_admin/constants.dart';



class Chart extends StatelessWidget {
  const Chart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
              PieChartData(
                sectionsSpace: 0,
                centerSpaceRadius: 80,
                startDegreeOffset: -90,
                sections: PaiChartSectionDatas,
              )
          ),
          Positioned.fill(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("25" "/" "50",style: TextStyle(color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w600,
                height: 1.5,),)
            ],
          ))
        ],
      ),
    );
  }
}



List<PieChartSectionData> PaiChartSectionDatas =[
  PieChartSectionData(
    color: AppColors.primaryColor,
    value: 25,
    showTitle: false,
    radius: 25,
  ),
  PieChartSectionData(
    color: const Color(0xFF26E5FF),
    value: 20,
    showTitle: false,
    radius: 22,
  ),
  PieChartSectionData(
    color: const Color(0xFFFFCF26),
    value: 10,
    showTitle: false,
    radius: 19,
  ),
  PieChartSectionData(
    color: const Color(0xFFEE2727),
    value: 15,
    showTitle: false,
    radius: 16,
  ),
  PieChartSectionData(
    color: AppColors.primaryColor.withOpacity(0.1),
    value: 25,
    showTitle: false,
    radius: 13,
  ),

];