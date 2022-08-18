import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.initial()) {
    on<TypeThemeEvent>((event, emit) {
      if (event.appTheme == AppTheme.light) {
        emit(state.copyWith(appTheme: AppTheme.light));
      }
      if (event.appTheme == AppTheme.dark) {
        emit(state.copyWith(appTheme: AppTheme.dark));
      }
    });
  }
}
