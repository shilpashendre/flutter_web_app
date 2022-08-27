import 'package:fitness_web_app/constants/images.dart';
import 'package:fitness_web_app/models/drawer_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  List<DrawerMenuItem> menuList = [
    DrawerMenuItem(title: "Activity", imagePath: Images.svgActivity),
    DrawerMenuItem(title: "BMI", imagePath: Images.svgBmi),
    DrawerMenuItem(title: "Heart", imagePath: Images.svgHeart),
    DrawerMenuItem(title: "Sleep", imagePath: Images.svgSleep),
    DrawerMenuItem(title: "Goals", imagePath: Images.svgGoals),
    DrawerMenuItem(title: "Workout", imagePath: Images.svgWorkout)
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text('Drawer Header'),
                ),
                Wrap(children: [
                  SizedBox(
                    height: double.maxFinite,
                    child: ListView.builder(
                        itemCount: menuList.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: SvgPicture.asset(
                              menuList[index].imagePath,
                              height: 20,
                              width: 20,
                            ),
                            title: Text(menuList[index].title),
                          );
                        }),
                  ),
                ])
              ],
            ),

            //add bottom view
            Text("data")
          ],
        ),
      ),
    );
  }
}
