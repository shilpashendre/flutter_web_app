import 'package:fitness_web_app/constants/images.dart';
import 'package:fitness_web_app/models/dash_board_header_menu.dart';
import 'package:fitness_web_app/widgets/activity_feed.dart';
import 'package:flutter/material.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  List<DashboardHeaderMenu> dashboardMenu = [
    DashboardHeaderMenu(
        title: "Steps per week", value: "8000", imagePath: Images.pngRunning),
    DashboardHeaderMenu(
        title: "Walking Distance",
        value: "12 mil",
        imagePath: Images.pngWalking),
    DashboardHeaderMenu(
        title: "Average Heart rate",
        value: "75",
        imagePath: Images.pngHeartrate),
    DashboardHeaderMenu(
        title: "Goals Completed", value: "4", imagePath: Images.pngGoal),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ActivityFeed(dashboardMenu: dashboardMenu),
        ]);
  }
}
