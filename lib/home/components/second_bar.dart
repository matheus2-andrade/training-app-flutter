import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_app/training_screen/train_screen.dart';
import '/colors.dart' as color;

class SecondBar extends StatelessWidget {
  const SecondBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Seu programa",
          style: TextStyle(
              fontSize: 20,
              color: color.AppColor.homePageSubtitle,
              fontWeight: FontWeight.w700),
        ),
        Spacer(),
        Text(
          "Detalhes",
          style: TextStyle(
            fontSize: 20,
            color: color.AppColor.homePageDetail,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        InkWell(
          onTap: () {
            Get.to(() => TrainScreen());
          },
          child: Icon(
            Icons.arrow_forward,
            size: 20,
            color: color.AppColor.homePageIcons,
          ),
        )
      ],
    );
  }
}
