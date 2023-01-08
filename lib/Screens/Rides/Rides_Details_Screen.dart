import 'package:flutter/material.dart';
import 'package:go_admin/Screens/Rides/Components/label_Cell.dart';
import 'package:go_admin/constants.dart';

class Ride_Details extends StatefulWidget {
  const Ride_Details({Key? key}) : super(key: key);

  @override
  State<Ride_Details> createState() => _Ride_DetailsState();
}

class _Ride_DetailsState extends State<Ride_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child:Padding(
          padding: const EdgeInsets.all(Paddings.defaultpadding),
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: AppColors.secondaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),

              child: Column(

                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: EdgeInsets.only(top: Paddings.defaultpadding,bottom: Paddings.defaultpadding),
                      child: Text("Completed Ride Details",style: TextStyle(color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,),),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,

                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                          showCheckboxColumn: false,
                          showBottomBorder: true,
                          dividerThickness: 2,
                          columns: [
                            DataColumn(label: ColumeLabel(text: "Customer Name",)),
                            DataColumn(label: ColumeLabel(text: "Driver Name",)),
                            DataColumn(label: ColumeLabel(text: "Vehicle Category",)),
                            DataColumn(label: ColumeLabel(text: "Pickup",)),
                            DataColumn(label: ColumeLabel(text: "Destination",)),
                            DataColumn(label: ColumeLabel(text: "Price",)),
                            DataColumn(label: ColumeLabel(text: "Feedback",)),
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
                                  DataCell(Center(child: RowCell(rowText: "Saad Ur Rehman",))),
                                  DataCell(Center(child: RowCell(rowText: "Said Hassan Ali Shah",))),
                                  DataCell(Center(child: RowCell(rowText: "Sedan",))),
                                  DataCell(Center(child: RowCell(rowText: "Tubewell near Comsats university Abbottabad"))),
                                  DataCell(Center(child: RowCell(rowText: "fowara chok Comsats university Abbottabad "))),
                                  DataCell(Center(child: RowCell(rowText: "400",))),
                                  DataCell(Center(child: RowCell(rowText: "4.5",))),
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
