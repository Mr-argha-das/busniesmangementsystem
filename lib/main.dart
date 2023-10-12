import 'package:bms_new/AddOrder/Add.order.dart';

import 'package:bms_new/Chat.page/chat.page.dart';

import 'package:bms_new/Client.add/Client.add.dart';
import 'package:bms_new/Client.add/Client.edit.dart';

import 'package:bms_new/Client.add/Client_table.dart';
import 'package:bms_new/Homepage/HomePage.dart';
import 'package:bms_new/Team.page/Team.table.dart';
import 'package:bms_new/Team.page/team.edit.dart';
import 'package:bms_new/Team.page/team.page.dart';
import 'package:bms_new/Users/User.edit.dart';
import 'package:bms_new/Users/User.table.dart';
import 'package:bms_new/Users/user.page.dart';
// import 'package:bms_new/Users/user.page.dart';
// import 'package:bms_new/venture/venture%20add.dart';
import 'package:bms_new/config/app.config.dart';
import 'package:bms_new/dashboard/dashboard.dart';
import 'package:bms_new/venture/Venture.table.dart';
import 'package:bms_new/venture/venture%20add.dart';
import 'package:bms_new/venture/venture.edit.dart';
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
