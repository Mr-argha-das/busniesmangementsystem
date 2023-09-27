import 'package:flutter/material.dart';

class AppConfig{
  AppConfig._();
  static Future<Widget> init({required Widget child}) async {
    return Builder(builder: (BuildContext context){
      return child;
    });
  }
}