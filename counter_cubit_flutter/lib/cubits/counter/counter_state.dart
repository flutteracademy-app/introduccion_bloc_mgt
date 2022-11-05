// ignore_for_file: public_member_api_docs, sort_constructors_first, constant_identifier_names
part of 'counter_cubit.dart';

class CounterState {
  final int? counter;
  final StatusModel? counterStatus;
  final String? errorMessage;
  const CounterState({
    this.counter,
    this.counterStatus,
    this.errorMessage,
  });

  // factory CounterState.initial() {
  //   return const CounterState(counter: 0);
  // }

  CounterState copyWith({
    int? counter,
    StatusModel? counterStatus,
    String? errorMessage,
  }) {
    return CounterState(
      counter: counter ?? this.counter,
      counterStatus: counterStatus ?? this.counterStatus,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
