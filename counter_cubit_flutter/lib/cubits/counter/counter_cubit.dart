import 'dart:developer';

import 'package:bloc/bloc.dart';

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
      increment();
      final newState = state.copyWith(counterStatus: StatusModel.SUCCESS);
      log("$newState");
      emit(newState);
    } catch (e) {
      final newState = state.copyWith(counterStatus: StatusModel.ERROR);
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
