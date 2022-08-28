import 'package:fitness_web_app/constants/app_colors.dart';
import 'package:fitness_web_app/constants/app_text_theme.dart';
import 'package:fitness_web_app/models/dash_board_header_menu.dart';
import 'package:flutter/material.dart';

class ActivityFeed extends StatelessWidget {
  const ActivityFeed({Key? key, required this.dashboardMenu}) : super(key: key);

  final List<DashboardHeaderMenu> dashboardMenu;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Wrap(
          children: [
            SizedBox(
              height: 150,
              width: 250,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    height: 150,
                    width: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: cardPinkColor,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 18.0),
                                child: Text(
                                  dashboardMenu[index].title,
                                  style: AppTextTheme.cardText,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5))),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 30.0, vertical: 6),
                                    child: Text(
                                      dashboardMenu[index].value,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                    ),
                                  ))
                            ]),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Positioned(
                        height: 70,
                        width: 70,
                        child: Image.asset(
                          dashboardMenu[index].imagePath,
                          height: 70,
                          width: 70,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        );
      },
      itemCount: dashboardMenu.length,
      shrinkWrap: true,
    );
  }
}
