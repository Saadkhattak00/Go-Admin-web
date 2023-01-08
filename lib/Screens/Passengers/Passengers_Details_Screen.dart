import 'package:flutter/material.dart';
import 'package:go_admin/Models/Routes_Model.dart';
import 'package:go_admin/Screens/Rides/Components/label_Cell.dart';
import 'package:go_admin/constants.dart';

class Passenger_Details extends StatefulWidget {
  const Passenger_Details({Key? key}) : super(key: key);

  @override
  State<Passenger_Details> createState() => _Passenger_DetailsState();
}

class _Passenger_DetailsState extends State<Passenger_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(Paddings.defaultpadding),
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),

              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: Paddings.defaultpadding,bottom: Paddings.defaultpadding),
                    child: Text("Pessenger Details",style: TextStyle(color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,),),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columnSpacing: 270,
                          dividerThickness: 2,
                          showCheckboxColumn: false,
                          showBottomBorder: true,
                          columns: [
                        DataColumn(label: ColumeLabel(text: "Name",)),
                        DataColumn(label: ColumeLabel(text: "Phone",)),
                        DataColumn(label: ColumeLabel(text: "Total Trips",)),
                        DataColumn(label: ColumeLabel(text: "Cancel Trips",)),
                      ],
                          rows: [
                        DataRow(
                          onSelectChanged:(bool ){},
                            // color: MaterialStateProperty.resolveWith<Color?>(
                            //         (Set<MaterialState> states) {
                            //       if (states.contains(MaterialState.selected)) {
                            //         return Theme.of(context).colorScheme.primary.withOpacity(0.08);
                            //       }
                            //       if () {
                            //         return Colors.grey.withOpacity(0.3);
                            //       }
                            //       return null;
                            //     }),

                            cells: <DataCell>[
                          DataCell(RowCell(rowText: "Saad Ur Rehman",)),
                          DataCell(RowCell(rowText: "+923329295282",)),
                          DataCell(RowCell(rowText: "20")),
                          DataCell(RowCell(rowText: "2")),
                        ]
                        )
                      ]),
                    ),
                  )
                ],
              ),
            ),
          ),
        ) ,
      ),
    );
  }
}

