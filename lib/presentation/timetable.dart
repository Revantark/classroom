import 'package:classroom/application/firestore/firestore_bloc.dart';
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
              value = (1 - (value.abs() * .5)).clamp(0.87, 1.0) as double;
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
  const SubsCard(this._index);
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<FirestoreBloc>(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Card(
        elevation: 10,
        shadowColor: Colors.blue[300],
        child: Container(
          color: Colors.blue,
          child: BlocBuilder<FirestoreBloc, FirestoreState>(
              builder: (context, state) {
            if (state.timetable.isEmpty) {
              return const Center(
                child: CircularProgressIndicator(backgroundColor: Colors.white,),
              );
            } else {
              return Center(
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.timetable[_index].data()['subs'].length as int,
                    itemBuilder: (context, index) {
                      
                      return ListTile(
                        title: Center(
                          child: Text(
                            state.timetable[_index].data()['subs'][index] as String,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                            style:const TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        onTap: () {
                          if (state.links.isEmpty) {
                            Scaffold.of(context).showSnackBar(const SnackBar(
                                content:  Text(
                                    "Updating links , try again")));
                          } else  {
                            final sub =
                                state.timetable[_index].data()['subs'][index] as String;
                            final url = state.links[sub] as String;
                            if(url.isEmpty){
                              Scaffold.of(context).removeCurrentSnackBar();
                              Scaffold.of(context).showSnackBar(const SnackBar(
                                content:  Text(
                                    "No link available")));
                            }
                            else if (sub.contains('ACS')) {
                              Scaffold.of(context).showSnackBar(const SnackBar(
                                  content:  Text(
                                      "No link available, search in whatsapp")));
                            } else if (sub.contains("&")) {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return BlocProvider.value(
                                        value: bloc,
                                        child: BottomSheetOptions(
                      wtUrl: state.links["WT"] as String,
                      cnUrl: state.links["CN"] as String,
                                        ));
                                  });
                            } else {
                              context.bloc<FirestoreBloc>().add(
                                  FirestoreEvent.launchZoom(
                                     url));
                            }
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

class BottomSheetOptions extends StatelessWidget {
  final String wtUrl, cnUrl;

  const BottomSheetOptions({Key key, this.wtUrl, this.cnUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        ListTile(
            title: const Text("CN"),
            onTap: () {
              context
                  .bloc<FirestoreBloc>()
                  .add(FirestoreEvent.launchZoom(cnUrl));
            }),
        ListTile(
            title: const Text("WT"),
            onTap: () {
              context
                  .bloc<FirestoreBloc>()
                  .add(FirestoreEvent.launchZoom(wtUrl));
            })
      ],
    );
  }
}
