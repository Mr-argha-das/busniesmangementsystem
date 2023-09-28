import 'package:bms_new/Homepage/HomePage.dart';
import 'package:bms_new/venture/venture%20add.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BmsDashboard());
}

class BmsDashboard extends StatefulWidget {
  const BmsDashboard({super.key});

  @override
  State<BmsDashboard> createState() => _BmsDashboardState();
}

class _BmsDashboardState extends State<BmsDashboard> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Vanture(),
    );
  }
}
