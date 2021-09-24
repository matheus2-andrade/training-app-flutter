import 'package:flutter/material.dart';
import '/colors.dart' as color;

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Treino",
          style: TextStyle(
              fontSize: 30,
              color: color.AppColor.homePageTitle,
              fontWeight: FontWeight.w700),
        ),
        Spacer(),
        Icon(
          Icons.arrow_back_ios,
          size: 20,
          color: color.AppColor.homePageIcons,
        ),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.calendar_today_outlined,
          size: 20,
          color: color.AppColor.homePageIcons,
        ),
        SizedBox(
          width: 15,
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: 20,
          color: color.AppColor.homePageIcons,
        )
      ],
    );
  }
}
