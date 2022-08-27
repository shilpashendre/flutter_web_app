import 'package:fitness_web_app/constants/app_colors.dart';
import 'package:fitness_web_app/constants/images.dart';
import 'package:fitness_web_app/models/goal_data.dart';
import 'package:fitness_web_app/pages/menu_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MyGoals extends StatefulWidget {
  final List<GoalData> goalList;
  const MyGoals({Key? key, required this.goalList}) : super(key: key);

  @override
  State<MyGoals> createState() => _MyGoalsState();
}

class _MyGoalsState extends State<MyGoals> {
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
            "My Goals",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: widget.goalList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(18.0),
                child: Stack(alignment: Alignment.centerLeft, children: [
                  Positioned(
                      child: Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width / 1,
                            decoration: const BoxDecoration(
                                color: myGoalCard3,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 18.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "${widget.goalList[index].percentage * 100}%",
                                          style: const TextStyle(
                                              fontSize: 30,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        Text(
                                          widget.goalList[index].goalTimeLeft,
                                          style: const TextStyle(
                                            color: Color(0xFFA6A6A6),
                                            fontSize: 14,
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ))),
                  Positioned(
                      child: Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width / 1.3,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0),
                                            child: Text(
                                              widget.goalList[index].goalTitle,
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          const SizedBox(height: 15),
                                          LinearPercentIndicator(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                2.9,
                                            lineHeight: 8.0,
                                            percent: widget
                                                .goalList[index].percentage,
                                            barRadius: const Radius.circular(5),
                                            progressColor: Colors.green,
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 18.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              widget.goalList[index].value,
                                              style: const TextStyle(
                                                color: Color(0xFFA6A6A6),
                                                fontSize: 14,
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            Container(
                                              decoration: const BoxDecoration(
                                                color: pinkBgCard,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(20)),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 6.0,
                                                        horizontal: 8.0),
                                                child: Text(
                                                  widget.goalList[index]
                                                      .goalTimeLeft,
                                                  style: const TextStyle(
                                                      fontSize: 12,
                                                      color: pinkText,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ]),
                              ),
                            ),
                          ))),
                  Positioned(
                      child: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        Images.svgActivity,
                        color: Colors.white,
                      ),
                    ),
                  )),
                ]),
              );
            },
          ),
        ));
  }
}
