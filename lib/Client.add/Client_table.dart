import 'package:bms_new/Client.add/Client.edit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClientDateTable extends StatefulWidget {
  const ClientDateTable({super.key});

  @override
  State<ClientDateTable> createState() => _ClientDateTableState();
}

class _ClientDateTableState extends State<ClientDateTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Client table",style: GoogleFonts.montserrat(color: Colors.white),),
      backgroundColor: Colors.blue.shade800,
      elevation: 0,
      ),
      body: MyDataTable());
  }
}

class MyDataTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: MediaQuery.of(context).size.height,
        
        child: DataTable(
          columns: const [
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Age')),
            DataColumn(label: Text('Country')),
            DataColumn(label: Text('Email')),
            DataColumn(label: Text('Phone')),
            DataColumn(label: Text('Edit')),
          ],
          rows: [
            DataRow(cells: [
              const DataCell(Text('John')),
              const DataCell(Text('25')),
              const DataCell(Text('USA')),
              const DataCell(Text('john@example.com')),
              const DataCell(Text('123-456-7890')),
              DataCell(
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, CupertinoPageRoute(builder: (context) => const ClientEdit()));
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
              const DataCell(Text('Alice')),
              const DataCell(Text('30')),
              const DataCell(Text('Canada')),
              const DataCell(Text('alice@example.com')),
              const DataCell(Text('987-654-3210')),
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
              const DataCell(Text('Bob')),
              const DataCell(Text('22')),
              const DataCell(Text('UK')),
              const DataCell(Text('bob@example.com')),
              const DataCell(Text('567-890-1234')),
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
              const DataCell(Text('Eve')),
              const DataCell(Text('28')),
              const DataCell(Text('Australia')),
              const DataCell(Text('eve@example.com')),
              const DataCell(Text('345-678-9012')),
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
              const DataCell(Text('Sam')),
              const DataCell(Text('35')),
              const DataCell(Text('Germany')),
              const DataCell(Text('sam@example.com')),
              const DataCell(Text('789-012-3456')),
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
              const DataCell(Text('Linda')),
              const DataCell(Text('29')),
              const DataCell(Text('France')),
              const DataCell(Text('linda@example.com')),
              const DataCell(Text('234-567-8901')),
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
      ),
    );
  }
}

ClientDateTable clientDateTable(){
  return ClientDateTable();
}