import 'package:classroom/application/local_storage/localstorage_cubit.dart';
import 'package:classroom/presentation/index.dart';
import 'package:classroom/repository/firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'application/firestore/firestore_bloc.dart';

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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MultiBlocProvider(
          providers: [
            BlocProvider(
              lazy: false,
              create: (context) => LocalstorageCubit()..checkClass(),
            ),
            BlocProvider(
              lazy: false,
              create: (context) => FirestoreBloc(FirestoreRepository()),
            ),
          ],
          child: Scaffold(
                      body: SafeArea(
              child: IndexPage()
                      ),
          ),
        ));
  }
}
