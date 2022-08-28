import 'package:fitness_web_app/widgets/header_ui.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HeartRate extends StatefulWidget {
  const HeartRate({Key? key}) : super(key: key);

  @override
  State<HeartRate> createState() => _HeartRateState();
}

class _HeartRateState extends State<HeartRate> {
  final List<ChartData> chartData = [
    ChartData(DateTime(2021, 1, 1), 3, 9),
    ChartData(DateTime(2021, 2, 1), 4, 11),
    ChartData(DateTime(2021, 3, 1), 6, 13),
    ChartData(DateTime(2021, 4, 1), 9, 17),
    ChartData(DateTime(2021, 5, 1), 12, 20),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
          children: [
            const HeaderUI(title: "Daily Activity"),
            Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SfCartesianChart(
                      primaryXAxis: DateTimeAxis(
                          edgeLabelPlacement: EdgeLabelPlacement.shift),
                      primaryYAxis: NumericAxis(labelFormat: '{value}'),
                      series: <RangeColumnSeries>[
                        RangeColumnSeries<ChartData, DateTime>(
                            dataSource: chartData,
                            xValueMapper: (ChartData data, _) => data.x,
                            lowValueMapper: (ChartData data, _) => data.low,
                            highValueMapper: (ChartData data, _) => data.high)
                      ])
                ]),
          ],
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.high, this.low);
  final DateTime x;
  final double high;
  final double low;
}
