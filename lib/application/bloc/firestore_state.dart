part of 'firestore_bloc.dart';

@freezed
abstract class FirestoreState with _$FirestoreState {
  const factory FirestoreState(
    {
      List timetable,
      Map links,
    }
  ) = _FirestoreState;

   factory FirestoreState.init() => FirestoreState(timetable: [],links: {});
}
