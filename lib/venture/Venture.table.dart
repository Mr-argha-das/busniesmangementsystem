import 'package:bms_new/venture/venture.edit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VentureDateTable extends StatefulWidget {
  const VentureDateTable({super.key});

  @override
  State<VentureDateTable> createState() => _VentureDateTableState();
}

class _VentureDateTableState extends State<VentureDateTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Venture table",style: GoogleFonts.montserrat(color: Colors.white),),
      backgroundColor: Colors.blue.shade800,
      elevation: 0,
      ),
      body: MyDataTable());
  }
}

class MyDataTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DataTable(
                  columns: const [
                    DataColumn(label: Text('Venture ID')),
                    DataColumn(label: Text('Venture Name')),
                    DataColumn(label: Text('Venture Type')),
                    DataColumn(label: Text('Edit')),
                  ],
                  rows: [
                    DataRow(cells: [
                      const DataCell(Text('1')),
                      const DataCell(Text('AHIT')),
                      const DataCell(Text('IT')),
                      DataCell(
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, CupertinoPageRoute(builder: (context) => VentureEdit()));
                          },
                          child: Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                              child: Text(
                                "Edit",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                    DataRow(cells: [
                      const DataCell(Text('2')),
                      const DataCell(Text('AHEC')),
                      const DataCell(Text('Service')),
                      DataCell(
                        Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text(
                              "Edit",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ]),
                    DataRow(cells: [
                      const DataCell(Text('3')),
                      const DataCell(Text('UHEC')),
                      const DataCell(Text('Service')),
                      DataCell(
                        Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text(
                              "Edit",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ]),
                    DataRow(cells: [
                      const DataCell(Text('4')),
                      const DataCell(Text('BSO')),
                      const DataCell(Text('Service')),
                      DataCell(
                        Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                            child: Text(
                              "Edit",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ]),
                    
                     
                  ],
                ),
        ],
      ),
    );
  }
}

VentureDateTable ventureDateTable(){
  return const VentureDateTable();
}