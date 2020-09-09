import 'package:classroom/presentation/home.dart';
import 'package:classroom/repository/firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'application/bloc/firestore_bloc.dart';

void main() async {
   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness:
          Brightness.dark, // navigation bar color
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark));
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider(
        lazy: false,
        create: (context) => FirestoreBloc(FirestoreRepository())..add(const FirestoreEvent.getData()),
        child: Scaffold(body: SafeArea(child: MyHomePage())),
      
    ));
  }
}


