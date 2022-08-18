part of 'theme_bloc.dart';

abstract class ThemeEvent {}

class TypeThemeEvent extends ThemeEvent {
  final AppTheme appTheme;

  TypeThemeEvent({required this.appTheme});
}
