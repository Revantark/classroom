import 'package:classroom/application/local_storage/localstorage_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClassesBottomSheet extends StatelessWidget {
  static const listTextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontSize: 15,
  );
  final String currentClassSection;
  const ClassesBottomSheet({Key key, this.currentClassSection})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 16),
            child: Center(
              child: const Text(
                "CLASSES",
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    letterSpacing: 2),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(5),
            color: currentClassSection == 'a' ? Colors.green : Colors.teal[50],
            child: ListTile(
              title: const Center(
                  child: const Text("CSE A", style: listTextStyle)),
              onTap: () {
                if (currentClassSection != 'a') {
                  BlocProvider.of<LocalstorageCubit>(context)
                      .changeClass('csea');
                  Navigator.pop(context);
                }
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.all(5),
            color: currentClassSection == 'b' ? Colors.green : Colors.teal[50],
            child: ListTile(
              title: const Center(
                child: const Text(
                  "CSE B",
                  style: listTextStyle,
                ),
              ),
              onTap: () {
                if (currentClassSection != 'b') {
                  BlocProvider.of<LocalstorageCubit>(context)
                      .changeClass('cseb');
                  Navigator.pop(context);
                }
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.all(5),
            color: currentClassSection == 'c' ? Colors.green : Colors.teal[50],
            child: ListTile(
              title: Center(
                child: const Text(
                  "CSE C",
                  style: listTextStyle,
                ),
              ),
              onTap: () {
                if (currentClassSection != 'c') {
                  BlocProvider.of<LocalstorageCubit>(context)
                      .changeClass('csec');
                  Navigator.pop(context);
                }
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.all(5),
            color: currentClassSection == 'd' ? Colors.green : Colors.teal[50],
            child: ListTile(
              title: Center(
                child: const Text(
                  "CSE D",
                  style: listTextStyle,
                ),
              ),
              onTap: () {
                if (currentClassSection != 'd') {
                  BlocProvider.of<LocalstorageCubit>(context)
                      .changeClass('csed');
                  Navigator.pop(context);
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
