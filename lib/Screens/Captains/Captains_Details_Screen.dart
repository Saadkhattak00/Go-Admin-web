import 'package:flutter/material.dart';
import 'package:go_admin/Screens/Rides/Components/label_Cell.dart';
import 'package:go_admin/constants.dart';

class Captains_Details extends StatefulWidget {
  const Captains_Details({Key? key}) : super(key: key);

  @override
  State<Captains_Details> createState() => _Captains_DetailsState();
}

class _Captains_DetailsState extends State<Captains_Details> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child:Padding(
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
                  child: Text("Captain Details",style: TextStyle(color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,),),
                ),
                SizedBox(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      showBottomBorder: true,
                        showCheckboxColumn: false,
                        dividerThickness: 2,
                        columns: [
                          DataColumn(label: ColumeLabel(text:  "Name",)),
                          DataColumn(label: ColumeLabel(text: "CNIC",)),
                          DataColumn(label: ColumeLabel(text: "Phone",)),
                          DataColumn(label: ColumeLabel(text: "Vehicle Category",)),
                          DataColumn(label: ColumeLabel(text: "Vehicle Model",)),
                          DataColumn(label: ColumeLabel(text: "Vehicle Color",)),
                          DataColumn(label: ColumeLabel(text: "Total Earning",)),
                          DataColumn(label: ColumeLabel(text: "Reviews",)),
                        ],
                        rows: [

                          DataRow(
                              onSelectChanged:(bool){},
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
                                DataCell(RowCell(rowText: "17201-0680200-7",)),
                                DataCell(RowCell(rowText: "+923329295282")),
                                DataCell(RowCell(rowText: "Sedan")),
                                DataCell(RowCell(rowText: "2005",)),
                                DataCell(RowCell(rowText: "White",)),
                                DataCell(RowCell(rowText: "20,000")),
                                DataCell(RowCell(rowText: "10")),
                              ]
                          )
                        ]),
                  ),
                )
              ],
            ),
          ),
        ) ,
      ),
    );
  }
}
