import 'package:bms_new/Chat.page/chat.page.dart';
import 'package:bms_new/Client.add/Client.add.dart';
import 'package:bms_new/Client.add/Client_table.dart';
import 'package:bms_new/Team.page/Team.table.dart';
import 'package:bms_new/Team.page/team.edit.dart';
import 'package:bms_new/Users/User.table.dart';
import 'package:bms_new/Users/user.page.dart';
import 'package:bms_new/dashboard/dashboard.dart';
import 'package:bms_new/venture/Venture.table.dart';
import 'package:bms_new/venture/venture%20add.dart';
import 'package:flutter/material.dart';

class Env {
  static List<Widget> pages = [
    dashboard(),
    addVenture(),
    ventureDateTable(),
    teamAdd(),
    teamDateTable(),
    users(),
    userDateTable(),
    clientAdd(),
    clientDateTable(),
    chatSection(),
  ];
}
