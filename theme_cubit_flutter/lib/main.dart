import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_cubit_flutter/cubits/theme/theme_cubit.dart';
import 'package:theme_cubit_flutter/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeCubit>(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Material App',
            home: const HomePage(),
            theme: state.appTheme == AppTheme.light
                ? ThemeData.light()
                : ThemeData.dark(),
          );
        },
      ),
    );
  }
}
