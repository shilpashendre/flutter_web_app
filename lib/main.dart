import 'package:fitness_web_app/constants/app_colors.dart';
import 'package:fitness_web_app/pages/dashboard.dart';
import 'package:fitness_web_app/pages/menu_drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final searchTextController = TextEditingController(text: "");

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
          actions: [
            SizedBox(
              height: 20,
              width: 100,
              child: TextFormField(
                controller: searchTextController,
                decoration: const InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.black),
                
                ),
              ),
            )
          ],
        ),
        drawer: const MenuDrawer(),
        body: const DashBoardPage());
  }
}
