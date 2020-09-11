import 'package:classroom/application/firestore/firestore_bloc.dart';
import 'package:classroom/application/local_storage/localstorage_cubit.dart';
import 'package:classroom/presentation/animated_day.dart';
import 'package:classroom/presentation/home.dart';
import 'package:classroom/presentation/select_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalstorageCubit, LocalstorageState>(
        builder: (context, state) {
      if (state is Checking) {
        return const Center(child: const CircularProgressIndicator(),);
      } else if (state is ClassFound) {
        BlocProvider.of<FirestoreBloc>(context).add(FirestoreEvent.getData(state.classs));
        return MyHomePage(state.classs);
      } else if (state is ClassNotFound) {
        return SelectClass();
      } else {
        return const Center(child:const Text("Unexcepted error occured, please restart the app"));
      }
    });
  }
}
