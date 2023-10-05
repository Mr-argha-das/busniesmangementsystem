import 'package:bms_new/Homepage/HomePage.dart';
import 'package:bms_new/Users/user.page.dart';

import 'package:bms_new/venture/venture%20add.dart';

import 'package:bms_new/config/app.config.dart';

import 'package:flutter/material.dart';

void main() {
  AppConfig.init(child: const BmsDashboard()).then((value) => runApp(value));
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
      home: Dashbord(),
    );
  }
}
