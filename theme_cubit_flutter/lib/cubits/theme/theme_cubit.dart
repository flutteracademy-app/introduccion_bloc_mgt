import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState.initial());

  void changeTheme() {
    if (state.appTheme == AppTheme.light) {
      emit(state.copyWith(appTheme: AppTheme.dark));
    } else {
      emit(state.copyWith(appTheme: AppTheme.light));
    }
  }
}
