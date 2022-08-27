import 'package:fitness_web_app/pages/menu_drawer.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DailyActivity extends StatefulWidget {
  const DailyActivity({Key? key}) : super(key: key);

  @override
  State<DailyActivity> createState() => _DailyActivityState();
}

class _DailyActivityState extends State<DailyActivity> {
  final List<ChartData> chartData = [
    ChartData('David', 25, const Color.fromRGBO(9, 0, 136, 1)),
    ChartData('Steve', 38, const Color.fromRGBO(147, 0, 119, 1)),
    ChartData('Jack', 34, const Color.fromRGBO(228, 0, 124, 1)),
    ChartData('Others', 52, const Color.fromRGBO(255, 189, 57, 1))
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
        centerTitle: false,
        title: const Text(
          "Daily activity",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SfCircularChart(series: <CircularSeries>[
                DoughnutSeries<ChartData, String>(
                    dataSource: chartData,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y,
                    // Explode the segments on tap
                    explode: true,
                    explodeIndex: 1)
              ])
            ]),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, [this.color = Colors.black]);
  final String x;
  final double y;
  final Color color;
}
