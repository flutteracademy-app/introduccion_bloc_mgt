import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:introduccion_bloc_mgt/utils/status_model.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState()) {
    _voidInitial();
  }

  _voidInitial() async {
    final newState =
        state.copyWith(counter: 0, counterStatus: StatusModel.LOADING);
    log("$newState");
    emit(newState);

    try {
      //DBFunction();
      final newState = state.copyWith(counterStatus: StatusModel.SUCCESS);
      log("$newState");
      emit(newState);
      //throw const FormatException(); => Lanzar error
    } catch (e) {
      final newState = state.copyWith(
        counterStatus: StatusModel.ERROR,
        errorMessage: 'Esto es un error',
      );
      log("$newState");
      emit(newState);
    }
  }

  void increment() {
    final newState = state.copyWith(counter: state.counter! + 1);
    log("$newState");
    emit(newState);
  }

  void decrement() {
    final newState = state.copyWith(counter: state.counter! - 1);
    log("$newState");
    emit(newState);
  }
}
