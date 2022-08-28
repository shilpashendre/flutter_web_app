import 'package:fitness_web_app/constants/images.dart';
import 'package:fitness_web_app/models/dash_board_header_menu.dart';
import 'package:fitness_web_app/models/goal_data.dart';
import 'package:fitness_web_app/pages/calories.dart';
import 'package:fitness_web_app/pages/daily_activity.dart';
import 'package:fitness_web_app/pages/my_goals.dart';
import 'package:fitness_web_app/pages/trainees.dart';
import 'package:fitness_web_app/widgets/activity_feed.dart';
import 'package:flutter/material.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

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
        goalProgress: "36 km / week",
        goalTitle: "Bicycle",
        percentage: 0.5,
        goalTimeLeft: "3 days left"),
    GoalData(
        value: "8000",
        imagePath: Images.pngRunning,
        goalProgress: "",
        goalTitle: "Jogging",
        percentage: 0.3,
        goalTimeLeft: "2 days left"),
    GoalData(
        value: "8000",
        imagePath: Images.svgGoals,
        goalProgress: "",
        goalTitle: "My Goal",
        percentage: 0.8,
        goalTimeLeft: "4 days left"),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      Expanded(
        flex: 4,
        child: Column(
          children: [
            SizedBox(
                height: 150, child: ActivityFeed(dashboardMenu: dashboardMenu)),
            MyGoals(goalList: goalList),
            const DailyActivity(),
            const Trainees(),
            const SizedBox(height: 20)
          ],
        ),
      ),
      const Expanded(
        flex: 2,
        child: Calories(),
      ),
    ]);
  }
}
