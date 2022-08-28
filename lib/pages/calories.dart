import 'package:fitness_web_app/constants/images.dart';
import 'package:fitness_web_app/models/row_item_model.dart';
import 'package:fitness_web_app/pages/menu_drawer.dart';
import 'package:fitness_web_app/widgets/header_ui.dart';
import 'package:fitness_web_app/widgets/row_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Calories extends StatefulWidget {
  const Calories({Key? key}) : super(key: key);

  @override
  State<Calories> createState() => _CaloriesState();
}

class _CaloriesState extends State<Calories> {
  List<RowItemModel> caloryList = [
    RowItemModel(
        clickIcon: Images.svgGoals,
        imagePath: Images.apple,
        subtitle: "Calories: 45",
        title: "Apple",
        displayMsgIcon: true),
    RowItemModel(
        clickIcon: Images.svgGoals,
        imagePath: Images.banana,
        subtitle: "Calories: 80",
        title: "Banana",
        displayMsgIcon: true),
    RowItemModel(
        clickIcon: Images.svgGoals,
        imagePath: Images.apricot,
        subtitle: "Calories: 17",
        title: "Apricot",
        displayMsgIcon: true),
    RowItemModel(
        clickIcon: Images.svgGoals,
        imagePath: Images.blueberries,
        subtitle: "Calories: 51",
        title: "Blueberries",
        displayMsgIcon: true),
    RowItemModel(
        clickIcon: Images.svgGoals,
        imagePath: Images.carrot,
        subtitle: "Calories: 78",
        title: "Carrot",
        displayMsgIcon: true),
    RowItemModel(
        clickIcon: Images.svgGoals,
        imagePath: Images.strawberry,
        subtitle: "Calories: 37",
        title: "Strawberry",
        displayMsgIcon: true),
    RowItemModel(
        clickIcon: Images.svgGoals,
        imagePath: Images.grapes,
        subtitle: "Calories: 66",
        title: "Grapes",
        displayMsgIcon: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Column(
          children: [
            const HeaderUI(title: "Calories"),
            ListView.builder(
              itemCount: caloryList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return RowItem(
                    imagePath: caloryList[index].imagePath,
                    subtitle: caloryList[index].subtitle,
                    title: caloryList[index].title,
                    displayMsgIcon: caloryList[index].displayMsgIcon);
              },
            ),
          ],
        ));
  }
}
