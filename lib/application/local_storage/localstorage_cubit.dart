import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'localstorage_state.dart';
part 'localstorage_cubit.freezed.dart';

class LocalstorageCubit extends Cubit<LocalstorageState> {
  LocalstorageCubit() : super(const LocalstorageState.checking());


  void changeClass(String classs) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      prefs.setString('class', classs);
      emit(LocalstorageState.classFound(classs));
    } catch (e) {
      emit(const LocalstorageState.failure());
    }
  }
  void checkClass() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      if(prefs.containsKey('class'))
      emit(LocalstorageState.classFound(prefs.getString('class')));
      else
      emit(const LocalstorageState.classNotFound());
    } catch (e) {
      emit(const LocalstorageState.failure());
    }
  }

}
