import 'package:fitness_web_app/constants/images.dart';
import 'package:fitness_web_app/models/dash_board_header_menu.dart';
import 'package:fitness_web_app/models/goal_data.dart';
import 'package:fitness_web_app/pages/my_goals.dart';
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

  List<GoalData> goalList = [
    GoalData(
        value: "8000",
        imagePath: Images.pngRunning,
        goalTime: "",
        goalTitle: "Bicycle",
        percentage: 0.5,
        valuePerWeel: "3 days left"),
    GoalData(
        value: "8000",
        imagePath: Images.pngRunning,
        goalTime: "",
        goalTitle: "Jogging",
        percentage: 0.3,
        valuePerWeel: "2 days left"),
    GoalData(
        value: "8000",
        imagePath: Images.svgGoals,
        goalTime: "",
        goalTitle: "My Goal",
        percentage: 0.8,
        valuePerWeel: "4 days left"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: ActivityFeed(dashboardMenu: dashboardMenu)),
          Expanded(child: MyGoals(goalList: goalList))
        ]);
  }
}
