import 'package:fitness_web_app/constants/images.dart';
import 'package:fitness_web_app/models/drawer_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

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
  final List<ChartData> chartData = [
    ChartData('David', 25),
    ChartData('Steve', 38),
    ChartData('Jack', 34),
    ChartData('Others', 52)
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
                DrawerHeader(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: SfCircularChart(series: <CircularSeries>[
                      RadialBarSeries<ChartData, String>(
                          dataSource: chartData,
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y)
                    ])),
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
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
                Image.asset(Images.pngNav),
                const Text(
                  "Change Dashoboard settings from here",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFA6A6A6),
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 15),
                TextButton(
                    onPressed: () {},
                    child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 8),
                          child: Text(
                            "Settings",
                            style: TextStyle(color: Colors.white),
                          ),
                        ))),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double y;
}
