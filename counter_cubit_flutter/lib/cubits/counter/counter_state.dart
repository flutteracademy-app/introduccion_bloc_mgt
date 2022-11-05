import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:introduccion_bloc_mgt/utils/status_model.dart';

part 'counter_state.freezed.dart';

@freezed
class CounterState with _$CounterState {
  const factory CounterState({
    @Default(12) int? counter,
    @Default(StatusModel.INITIAL) StatusModel? counterStatus,
    @Default('Esto es un error') String? errorMessage,
  }) = _CounterState;
}

// class CounterState {
//   final int? counter;
//   final StatusModel? counterStatus;
//   final String? errorMessage;
//   const CounterState({
//     this.counter,
//     this.counterStatus,
//     this.errorMessage,
//   });

  // factory CounterState.initial() {
  //   return const CounterState(counter: 0);
  // }

  // CounterState copyWith({
  //   int? counter,
  //   StatusModel? counterStatus,
  //   String? errorMessage,
  // }) {
  //   return CounterState(
  //     counter: counter ?? this.counter,
  //     counterStatus: counterStatus ?? this.counterStatus,
  //     errorMessage: errorMessage ?? this.errorMessage,
  //   );
  // }
  //}
