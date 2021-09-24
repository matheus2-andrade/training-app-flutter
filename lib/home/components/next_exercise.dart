import 'package:flutter/material.dart';
import '/colors.dart' as color;

class NextExercise extends StatelessWidget {
  const NextExercise({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 220,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          color.AppColor.gradientFirst.withOpacity(0.8),
          color.AppColor.gradientSecond.withOpacity(0.9),
        ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(80),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(5, 10),
            blurRadius: 20,
            color: color.AppColor.gradientSecond.withOpacity(0.2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(
            left: 20, top: 25, bottom: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Próximo exercício",
              style: TextStyle(
                fontSize: 16,
                color: color.AppColor.homePageContainerTextSmall,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Tonificação de pernas",
              style: TextStyle(
                fontSize: 25,
                color: color.AppColor.homePageContainerTextSmall,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "e Treino de glúteos",
              style: TextStyle(
                fontSize: 25,
                color: color.AppColor.homePageContainerTextSmall,
              ),
            ),
            Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.timer,
                  size: 20,
                  color: color.AppColor.homePageContainerTextSmall,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "60 min",
                  style: TextStyle(
                      color: color.AppColor.homePageContainerTextSmall,
                      fontSize: 14),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: color.AppColor.gradientFirst,
                      blurRadius: 10,
                      offset: Offset(4, 8),
                    ),
                  ], borderRadius: BorderRadius.circular(60)),
                  child: Icon(
                    Icons.play_circle_fill,
                    color: Colors.white,
                    size: 60,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

