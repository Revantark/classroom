part of 'firestore_bloc.dart';

@freezed
abstract class FirestoreState with _$FirestoreState {
  const factory FirestoreState(
    {
      List<QueryDocumentSnapshot> timetable,
      Map links,
    }
  ) = _FirestoreState;

   factory FirestoreState.init() => const FirestoreState(timetable: [],links: {});
}
