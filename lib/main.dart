import 'package:fitness_web_app/constants/app_colors.dart';
import 'package:fitness_web_app/pages/dashboard.dart';
import 'package:fitness_web_app/pages/menu_drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: scafoldBgColor,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: scafoldBgColor,
          elevation: 0,
          centerTitle: false,
          title: const Text(
            "Dashboard menu",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        drawer: const MenuDrawer(),
        body: const DashBoardPage());
  }
}
