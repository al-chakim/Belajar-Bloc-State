import 'package:bloc/bloc.dart';

class Nge extends Cubit<int> {
  Nge({this.init = 0}) : super(init);

  int init;

  void increm() => emit(state + 1);

  void decrem() => emit(state - 1);

  @override
  void onChange(Change<int> change) {
    // TODO: implement onChange
    super.onChange(change);
    print(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(error, stackTrace);
    print(error);
  }
}
