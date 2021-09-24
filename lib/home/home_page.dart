import 'dart:ffi';

import 'package:flutter/material.dart';
import '../colors.dart' as color;
import 'components/keep_your_plan.dart';
import 'components/next_exercise.dart';
import 'components/second_bar.dart';
import 'components/top_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(
          children: [
            TopBar(),
            SizedBox(
              height: 30,
            ),
            SecondBar(),
            SizedBox(
              height: 20,
            ),
            NextExercise(),
            KeepYourPlan(),
            Row(
              children: [
                Text(
                  "Área de foco",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: color.AppColor.homePageTitle),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (_, i) {
                  return Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: 5),
                        width: 200,
                        height: 170,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage("assets/ex1.png"),
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              offset: Offset(5, 5),
                              color: color.AppColor.gradientSecond
                                  .withOpacity(0.1),
                            ),
                            BoxShadow(
                              blurRadius: 3,
                              offset: Offset(-5, -5),
                              color: color.AppColor.gradientSecond
                                  .withOpacity(0.1),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "glúteos",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: color.AppColor.homePageDetail),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
