import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_bloc_flutter/utils/status_model.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState()) {
    on<TypeThemeEvent>((event, emit) {
      emit(state.copyWith(
        statusModel: StatusModel.LOADING,
      ));
      try {
        if (event.appTheme == AppTheme.light) {
          emit(state.copyWith(
            appTheme: AppTheme.light,
            statusModel: StatusModel.SUCCESS,
          ));
        }
        if (event.appTheme == AppTheme.dark) {
          emit(state.copyWith(
            appTheme: AppTheme.dark,
            statusModel: StatusModel.SUCCESS,
          ));
        }
      } catch (e) {
        emit(state.copyWith(
          statusModel: StatusModel.ERROR,
        ));
      }
    });
  }
}
