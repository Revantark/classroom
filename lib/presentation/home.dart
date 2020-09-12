import 'package:classroom/presentation/animated_day.dart';
import 'package:classroom/presentation/current_class.dart';
import 'package:classroom/presentation/timetable.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final String className;
  const MyHomePage(this.className);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController dateController, subsController;
  int today;

  @override
  void initState() {
    today = DateTime.now().weekday - 1;
    dateController = PageController(
        viewportFraction: 0.4, keepPage: false, initialPage: today);
    subsController = PageController(
        viewportFraction: 0.7, keepPage: false, initialPage: today);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        Flexible(
            flex: 3,
            child: AnimatedDay(dateController: dateController, day: today)),
        Flexible(
          flex: 10,
          child: Timetable(
              dateController: dateController,
              controller: subsController,
              today: today),
        ),
        Flexible(
          child: CurrentClass(
            cc: '${widget.className.substring(0, 3).toUpperCase()}'
                '-'
                '${widget.className.substring(3).toUpperCase()}',
          )
        ),
      ],
    );
  }

  @override
  void dispose() {
    dateController.dispose();
    subsController.dispose();
    super.dispose();
  }
}
