import 'package:flutter/material.dart';

class AnimatedDay extends StatelessWidget {
  final PageController dateController;
  final int day;

  const AnimatedDay({Key key, this.dateController, this.day}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int today = day;
    return PageView.builder(
      itemCount: 6,
      physics: const NeverScrollableScrollPhysics(),
      controller: dateController,
      itemBuilder: (context, index) {
        return AnimatedBuilder(
          animation: dateController,

          builder: (context, child) {
            double value = 0.65;
            if (index == today) {
              value = 1.0;
              today = 7;
            } else if(dateController.position.haveDimensions) {
              value = dateController.page - index;
              value = (1 - (value.abs() * .5)).clamp(0.65, 1.0) as double;
            }

            return Transform.scale(
              scale: Curves.linear.transform(value),
              child: Opacity(
                opacity: Curves.linear.transform(value==0.65?0.4:value),
                child: child),
            );
          },
          child: Center(child: getDate(index)),
        );
      },
    );
  }
}

Widget getDate(int i) {
  switch (i) {
    case 0:
      {
        return const Text(
          "Monday",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        );
      }
    case 1:
      {
        return const Text(
          "Tuesday",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        );
      }
    case 2:
      {
        return const Text(
          "Wednesday",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        );
      }
    case 3:
      {
        return const Text(
          "Thursday",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        );
      }
    case 4:
      {
        return const Text(
          "Friday",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        );
      }
    case 5:
      {
        return const Text(
          "Saturday",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        );
      }
    default:
      {
        return const Text(
          "SomeDay",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        );
      }
  }
}
