part of 'localstorage_cubit.dart';

@freezed
abstract class LocalstorageState with _$LocalstorageState {
  const factory LocalstorageState.classFound(String classs) = ClassFound;
  const factory LocalstorageState.checking() = Checking;
  const factory LocalstorageState.classNotFound() = ClassNotFound;
  const factory LocalstorageState.failure() = Failure;
  const factory LocalstorageState.changedClass() = ClassChanged;

}
