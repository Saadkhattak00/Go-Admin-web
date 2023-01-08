import 'package:flutter/material.dart';
import 'package:go_admin/Screens/Rides/Components/label_Cell.dart';
import 'package:go_admin/Screens/Today_Requests/Components/Request_Card.dart';
import 'package:go_admin/constants.dart';

class Today_Requests extends StatefulWidget {
  const Today_Requests({Key? key}) : super(key: key);

  @override
  State<Today_Requests> createState() => _Today_RequestsState();
}

class _Today_RequestsState extends State<Today_Requests> {
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
                    child: Text("Today's Request",style: TextStyle(color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,),),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: DataTable(
                        dividerThickness: 2,
                        showCheckboxColumn: false,
                        showBottomBorder: true,
                        columns: [
                          DataColumn(label: ColumeLabel(text: "Driver Name",)),
                          DataColumn(label: ColumeLabel(text: "Cnic",)),
                          DataColumn(label: ColumeLabel(text: "Vehicle Category",)),
                        ],
                        rows: [

                          DataRow(

                              onSelectChanged:(bool ){
                                showDialog(
                                    context: context, builder: (builder) => Request_Card());
                              },
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
                                DataCell(RowCell(rowText: "Sedan")),
                              ]

                          )
                        ]),
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
