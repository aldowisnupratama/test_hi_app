import 'package:bloc/bloc.dart';

class SelectTimeCubit extends Cubit<List<String>> {
  SelectTimeCubit() : super([]);

  void selectTime(String id) {
    if (!isSelected(id)) {
      state.clear();
      state.add(id);
      print(state);
    } else {
      state.remove(id);
    }
    print(state);
    emit(List.from(state));
  }

  bool isSelected(String id) {
    if (!state.contains(id)) {
      return false;
    } else {
      return true;
    }
  }
}
