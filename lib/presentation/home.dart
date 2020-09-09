import 'package:classroom/presentation/animated_day.dart';
import 'package:classroom/presentation/timetable.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
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
    // BlocProvider.of<FirestoreBloc>(context).add(const FirestoreEvent.getData());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
            flex: 1,
            child: AnimatedDay(dateController: dateController, day: today)),
        Flexible(
          flex: 3,
          child: 
            
            Timetable(dateController: dateController, controller: subsController, today: today),
          
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
