import 'package:classroom/application/bloc/firestore_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Timetable extends StatelessWidget {
  final int today;
  final PageController controller, dateController;

  const Timetable({Key key, this.today, this.controller, this.dateController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int day = today;
    return PageView.builder(
      itemCount: 6,
      controller: controller,
      onPageChanged: (i) {
        dateController.animateToPage(i,
            duration: const Duration(milliseconds: 500), curve: Curves.ease);
      },
      itemBuilder: (context, index) {
        return AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            double value = 0.87;
            if (index == day) {
              value = 1.0;
              day = 7;
            } else if (controller.position.haveDimensions) {
              //CHECK
              value = controller.page - index;
              value = (1 - (value.abs() * .5)).clamp(0.87, 1.0);
            }

            return Transform.scale(
              scale: Curves.linear.transform(value),
              child: child,
            );
          },
          child: SubsCard(index),
        );
      },
    );
  }
}

class SubsCard extends StatelessWidget {
  final int _index;
  SubsCard(this._index);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Card(
        child: Container(
          color: Colors.blue,
          child: BlocBuilder<FirestoreBloc, FirestoreState>(
              builder: (context, state) {
            if (state.timetable.isEmpty) {
              return const Center(
                child: const CircularProgressIndicator(),
              );
            } else {
              return Center(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.timetable[_index].data()['subs'].length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        focusColor: Colors.green,
                        title: Center(
                          child: Text(
                            state.timetable[_index].data()['subs'][index],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        onTap: () {
                          if (state.links.isEmpty) {
                            Scaffold.of(context).showSnackBar(SnackBar(
                                content:
                                    const Text("Updating links , try again")));
                          } else {
                            String sub =
                                state.timetable[_index].data()['subs'][index];
                            if (sub.contains('ACS')) {
                              Scaffold.of(context).showSnackBar(SnackBar(
                                  content: const Text(
                                      "No link available, search in whatsapp")));
                            } else if (sub.contains("&")) {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return Wrap(
                                      children: [
                                        ListTile(
                                            title: const Text("CN"),
                                            onTap: () {
                                              context.bloc<FirestoreBloc>().add(
                                                  FirestoreEvent.launchZoom(
                                                      state.links["CN"]));
                                            }),
                                        ListTile(
                                            title: const Text("WT"),
                                            onTap: () {
                                              context.bloc<FirestoreBloc>().add(
                                                  FirestoreEvent.launchZoom(
                                                      state.links["WT"]));
                                            })
                                      ],
                                    );
                                  });
                            } else
                              context.bloc<FirestoreBloc>().add(
                                  FirestoreEvent.launchZoom(state.links[sub]));
                          }
                        },
                      );
                    }),
              );
            }
          }),
        ),
      ),
    );
  }
}
