// import 'package:bhbms_dashboard/modals/main.models.dart';
// import 'package:flutter/material.dart';

// class ClientsOrderSearch extends StatefulWidget {
//   final Function myfunction;
//   final List<ClientOrders> items;
//   const ClientsOrderSearch(
//       {super.key, required this.myfunction, required this.items});

//   @override
//   State<ClientsOrderSearch> createState() => _ClientsOrderSearchState();
// }

// class _ClientsOrderSearchState extends State<ClientsOrderSearch> {
//   bool drop = false;
//   List<ClientOrders> _clientsList = [];
//   String dropValue = "Select Orders";
//   @override
//   void initState() {
//     super.initState();
//     _clientsList = widget.items;
//   }

//   void myLogic(String enterKeyword) {
//     // List<StatusList> results = [];
//     // if (enterKeyword.isEmpty) {
//     //   results = _clientsList;
//     // } else {
//     //   results = _clientsList
//     //       .where((user) => user.value.contains(enterKeyword.toLowerCase() ))
//     //       .toList();
//     // }
//     // setState(() {
//     //   _clientsList = results;
//     // });
//     final suggestions = _clientsList.where((element) {
//       final statusValue = element.orderNumber.toLowerCase();
//       final input = enterKeyword.toLowerCase();
//       return statusValue.contains(input);
//     }).toList();
//     setState(() => _clientsList = suggestions);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return drop == false
//         ? InkWell(
//             onTap: () {
//               setState(() {
//                 drop = true;
//               });
//             },
//             child: Container(
//               height: 50,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   color: Colors.transparent,
//                   border: Border.all(
//                       color: Colors.grey.shade500, style: BorderStyle.solid)),
//               child: Center(
//                 child: Text(
//                   dropValue,
//                   style: const TextStyle(color: Colors.black, fontSize: 15),
//                 ),
//               ),
//             ),
//           )
//         : Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               height: 311,
//               width: double.infinity,
//               child: Column(
//                 children: [
//                   if (drop == true)
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: TextFormField(
//                         decoration: InputDecoration(
//                             label: const Text("Search"),
//                             filled: true,
//                             fillColor: Colors.grey.shade200,
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             )),
//                         onChanged: (value) {
//                           myLogic(value);
//                         },
//                       ),
//                     ),
//                   if (drop == true)
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Container(
//                         height: 220,
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             color: Colors.white,
//                             boxShadow: [
//                               BoxShadow(
//                                   color: Colors.grey.shade300,
//                                   spreadRadius: 1,
//                                   blurRadius: 15,
//                                   offset: const Offset(4, 4))
//                             ]),
//                         child: ListView.builder(
//                             itemCount: _clientsList.length,
//                             itemBuilder: (context, index) {
//                               return Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: InkWell(
//                                   onTap: () {
//                                     widget.myfunction(_clientsList[index].id);
//                                     setState(() {
//                                       drop = false;
//                                       dropValue =
//                                           _clientsList[index].orderNumber;
//                                     });
//                                   },
//                                   child: Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Center(
//                                       child: Text(
//                                         _clientsList[index].orderNumber,
//                                         style: const TextStyle(
//                                           color: Colors.black,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               );
//                             }),
//                       ),
//                     ),
//                 ],
//               ),
//             ),
//           );
//   }
// }
