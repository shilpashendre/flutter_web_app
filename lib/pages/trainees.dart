import 'package:fitness_web_app/constants/images.dart';
import 'package:fitness_web_app/models/row_item_model.dart';
import 'package:fitness_web_app/pages/menu_drawer.dart';
import 'package:fitness_web_app/widgets/row_item.dart';
import 'package:flutter/material.dart';

class Trainees extends StatefulWidget {
  const Trainees({Key? key}) : super(key: key);

  @override
  State<Trainees> createState() => _TraineesState();
}

class _TraineesState extends State<Trainees> {
  List<RowItemModel> traineeList = [
    RowItemModel(
        clickIcon: Images.svgGoals,
        imagePath: Images.svgCoach1,
        subtitle: "Wrestling Coach",
        title: "Dwayne Johnson",
        displayMsgIcon: true),
    RowItemModel(
        clickIcon: Images.svgGoals,
        imagePath: Images.svgCoach1,
        subtitle: "Boxing Coach",
        title: "Mike Tyson",
        displayMsgIcon: true)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: const MenuDrawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Your Trainers",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: ListView.builder(
            itemCount: traineeList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return RowItem(
                  imagePath: traineeList[index].imagePath,
                  subtitle: traineeList[index].subtitle,
                  title: traineeList[index].title,
                  displayMsgIcon: traineeList[index].displayMsgIcon);
            },
          )),
    );
  }
}
