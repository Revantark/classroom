part of 'firestore_bloc.dart';

@freezed
abstract class FirestoreEvent with _$FirestoreEvent {
  const factory FirestoreEvent.getData() = _Started;
  const factory FirestoreEvent.setLinks(Map links) = _SetLinks;
  const factory FirestoreEvent.setTimetable(List timetable) = _SetTimetable;
  const factory FirestoreEvent.launchZoom(String url) = _LaunchZoomApp;
}
