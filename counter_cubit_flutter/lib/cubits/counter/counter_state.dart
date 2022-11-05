// ignore_for_file: public_member_api_docs, sort_constructors_first, constant_identifier_names
part of 'counter_cubit.dart';

enum StatusModel {
  INITIAL,
  LOADING,
  SUCCESS,
  ERROR,
}

class CounterState {
  final int? counter;
  final StatusModel? counterStatus;
  const CounterState({
    this.counter,
    this.counterStatus,
  });

  // factory CounterState.initial() {
  //   return const CounterState(counter: 0);
  // }

  CounterState copyWith({int? counter, StatusModel? counterStatus}) {
    return CounterState(
        counter: counter ?? this.counter,
        counterStatus: counterStatus ?? this.counterStatus);
  }
}
