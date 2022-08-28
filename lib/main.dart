import 'package:fitness_web_app/constants/app_colors.dart';
import 'package:fitness_web_app/constants/images.dart';
import 'package:fitness_web_app/pages/dashboard.dart';
import 'package:fitness_web_app/pages/menu_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  TextEditingController searchTextController = TextEditingController(text: "");

  List<Widget> headerActionWidget(BuildContext context) {
    return [
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Container(
            height: 20,
            width: 200,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: Color(0xFFF0F0F0),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: searchTextController,
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: const TextStyle(color: Colors.black),
                  border: InputBorder.none,
                  suffixIcon: Container(
                      height: 18,
                      width: 18,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          Images.pngSearch,
                          height: 20,
                          width: 20,
                        ),
                      )),
                ),
              ),
            )),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 20.0, left: 20, bottom: 2),
        child: Container(
            height: 20,
            width: 150,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SvgPicture.asset(
                    Images.svgCoach1,
                    height: 30,
                    width: 30,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Annanta Jolil",
                    style: TextStyle(color: Color(0XFF141A2F)),
                  )
                ],
              ),
            )),
      )
    ];
  }

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
          actions: headerActionWidget(context),
        ),
        drawer: const MenuDrawer(),
        body: const SingleChildScrollView(child: DashBoardPage()));
  }
}
