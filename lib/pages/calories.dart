import 'package:fitness_web_app/constants/images.dart';
import 'package:fitness_web_app/models/row_item_model.dart';
import 'package:fitness_web_app/widgets/header_ui.dart';
import 'package:fitness_web_app/widgets/row_item.dart';
import 'package:flutter/material.dart';

class Calories extends StatefulWidget {
  const Calories({Key? key}) : super(key: key);

  @override
  State<Calories> createState() => _CaloriesState();
}

class _CaloriesState extends State<Calories> {
  List<RowItemModel> caloryList = [
    RowItemModel(
        clickIcon: Images.pngArrow,
        imagePath: Images.apple,
        subtitle: "Calories: 45",
        title: "Apple",
        displayMsgIcon: true),
    RowItemModel(
        clickIcon: Images.pngArrow,
        imagePath: Images.banana,
        subtitle: "Calories: 80",
        title: "Banana",
        displayMsgIcon: true),
    RowItemModel(
        clickIcon: Images.pngArrow,
        imagePath: Images.apricot,
        subtitle: "Calories: 17",
        title: "Apricot",
        displayMsgIcon: true),
    RowItemModel(
        clickIcon: Images.pngArrow,
        imagePath: Images.blueberries,
        subtitle: "Calories: 51",
        title: "Blueberries",
        displayMsgIcon: true),
    RowItemModel(
        clickIcon: Images.pngArrow,
        imagePath: Images.carrot,
        subtitle: "Calories: 78",
        title: "Carrot",
        displayMsgIcon: true),
    RowItemModel(
        clickIcon: Images.pngArrow,
        imagePath: Images.strawberry,
        subtitle: "Calories: 37",
        title: "Strawberry",
        displayMsgIcon: true),
    RowItemModel(
        clickIcon: Images.pngArrow,
        imagePath: Images.grapes,
        subtitle: "Calories: 66",
        title: "Grapes",
        displayMsgIcon: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
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
                    clickIcon: caloryList[index].clickIcon,
                    isImageTypeSVG: false,
                  );
                },
              ),
            ],
          )),
    );
  }
}
