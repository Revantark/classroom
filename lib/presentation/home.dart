import 'package:classroom/application/local_storage/localstorage_cubit.dart';
import 'package:classroom/presentation/animated_day.dart';
import 'package:classroom/presentation/timetable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  final String className;
  MyHomePage(this.className);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  PageController dateController, subsController;
  final listTextStyle=TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: 15,
  );
  int today;

  void showBottomSheet(){
    showModalBottomSheet(
        context: context,
        builder: (context){
          return Container(
            color: Colors.white,
            padding: const EdgeInsets.fromLTRB(20,10,10,20),
            child: Center(
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top:15,bottom: 15),
                      child: Text("CLASSES",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                          letterSpacing:2
                        ),
                      ),

                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.teal[50],
                    child: ListTile(
                      title: Text("CSE A",
                        style: listTextStyle
                      ),
                      onTap: (){
                        BlocProvider.of<LocalstorageCubit>(context).changeClass('csea');
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.teal[50],
                    child: ListTile(
                      title: Text("CSE B",
                        style: listTextStyle,
                      ),
                      onTap: (){
                        BlocProvider.of<LocalstorageCubit>(context).changeClass('cseb');
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.teal[50],
                    child: ListTile(
                      title: Text("CSE C",
                        style: listTextStyle,
                      ),
                      onTap: (){
                        BlocProvider.of<LocalstorageCubit>(context).changeClass('csec');
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.teal[50],
                    child: ListTile(
                      title: Text("CSE D",
                        style: listTextStyle,
                      ),
                      onTap: (){
                        BlocProvider.of<LocalstorageCubit>(context).changeClass('csed');
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

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
          flex: 2,
          child: RaisedButton(
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            color: Colors.blue,
              onPressed:()=> showBottomSheet(),
              child: Text('${widget.className.substring(0,3).toUpperCase()}''-'
                  '${widget.className.substring(3).toUpperCase()}',
                style: TextStyle(color: Colors.white),
              )
          ),
        ),
        Flexible(
            flex: 3,
            child: AnimatedDay(dateController: dateController, day: today)
        ),
        Flexible(
          flex: 10,
          child:Timetable(dateController: dateController, controller: subsController, today: today),
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
