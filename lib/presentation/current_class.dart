import 'package:classroom/application/local_storage/localstorage_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'classes_bottom_sheet.dart';

class CurrentClass extends StatelessWidget {
  final String cc;

  const CurrentClass({Key key, this.cc}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<LocalstorageCubit>(context);
    return Wrap(
      children: [
        GestureDetector(
          onTap: () => showModalBottomSheet(
                  context: context,
                  builder: (context) => BlocProvider.value(
                    value: bloc,
                    child: ClassesBottomSheet(currentClassSection: cc[4].toLowerCase()))),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom:8.0),
                    child: Column(children: [
            const Icon(Icons.keyboard_arrow_up),
        Text(cc,style:const TextStyle(fontSize: 16),) ,
          ],),
                  ),
        )
        
      ],
    );
  }
}