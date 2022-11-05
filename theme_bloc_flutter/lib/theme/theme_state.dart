part of 'theme_bloc.dart';

enum AppTheme {
  light,
  dark,
}

class ThemeState {
  final AppTheme appTheme;
  final StatusModel? statusModel;

  ThemeState({
    this.appTheme = AppTheme.light,
    this.statusModel,
  });

  ThemeState copyWith({
    AppTheme? appTheme,
    StatusModel? statusModel,
  }) {
    return ThemeState(
      appTheme: appTheme ?? this.appTheme,
      statusModel: statusModel ?? this.statusModel,
    );
  }
}
