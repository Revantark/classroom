import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:classroom/repository/firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

part 'firestore_event.dart';
part 'firestore_state.dart';
part 'firestore_bloc.freezed.dart';

class FirestoreBloc extends Bloc<FirestoreEvent, FirestoreState> {
  FirestoreRepository _firestoreRepository;
  FirestoreBloc(this._firestoreRepository) : super(FirestoreState.init());
  StreamSubscription _ttSubscription, _linksSubscription;
  @override
  Stream<FirestoreState> mapEventToState(
    FirestoreEvent event,
  ) async* {
    yield* event.map(getData: (e) async* {

      _ttSubscription = _firestoreRepository
          .watchTimeTable()
          .listen((event) => add(FirestoreEvent.setTimetable(event)));
      _linksSubscription = _firestoreRepository
          .watchLinks()
          .listen((event) => add(FirestoreEvent.setLinks(event)));
    }, setLinks: (e) async* {
      yield state.copyWith(links: e.links);
    }, setTimetable: (e) async* {
      yield state.copyWith(timetable: e.timetable);
    },
    launchZoom: (e)async*{
      if (await canLaunch(e.url)) {
    await launch(e.url);
    }
    }
    );
  }

  @override
  Future<void> close() {
    _ttSubscription.cancel();
    _linksSubscription.cancel();
    return super.close();
  }
}
