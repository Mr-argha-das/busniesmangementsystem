import 'package:bms_new/Team.page/team.edit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TeamDateTable extends StatefulWidget {
  const TeamDateTable({super.key});

  @override
  State<TeamDateTable> createState() => _TeamDateTableState();
}

class _TeamDateTableState extends State<TeamDateTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Team table",style: GoogleFonts.montserrat(color: Colors.white),),
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
                  DataColumn(label: Text('Team Name')),
                  DataColumn(label: Text('Team Type')),
                  DataColumn(label: Text('Edit')),
                ],
                rows: [
                  DataRow(cells: [
                    const DataCell(Text('Flutter')),
                    const DataCell(Text('Coding')),
                    DataCell(
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, CupertinoPageRoute(builder: (context) => TeamAddEdit()));
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
                    const DataCell(Text('Flutter')),
                    const DataCell(Text('Coding')),
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
                    const DataCell(Text('Flutter')),
                    const DataCell(Text('Coding')),
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
                    const DataCell(Text('Flutter')),
                    const DataCell(Text('Coding')),
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
                    const DataCell(Text('Flutter')),
                    const DataCell(Text('Coding')),
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
                    const DataCell(Text('Flutter')),
                    const DataCell(Text('Coding')),
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
TeamDateTable teamDateTable(){
  return const TeamDateTable();
}