import 'package:flutter/material.dart';
import '/colors.dart' as color;

class TrainScreen extends StatefulWidget {
  const TrainScreen({Key? key}) : super(key: key);

  @override
  _TrainScreenState createState() => _TrainScreenState();
}

class _TrainScreenState extends State<TrainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            color.AppColor.gradientFirst,
            color.AppColor.gradientSecond
          ], begin: FractionalOffset(0.0, 0.4), end: Alignment.topRight),
        ),
      ),
    );
  }
}
