import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_bloc_flutter/theme/theme_bloc.dart';
import 'package:theme_bloc_flutter/utils/status_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme.light;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme'),
      ),
      body: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          if (state.statusModel == StatusModel.LOADING) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state.statusModel == StatusModel.SUCCESS) {
            return Center(
              child: ElevatedButton(
                child: const Text(
                  "Cambiar Tema",
                  style: TextStyle(fontSize: 25),
                ),
                onPressed: () {
                  print(appTheme);
                  if (appTheme == AppTheme.light) {
                    appTheme = AppTheme.dark;
                  } else if (appTheme == AppTheme.dark) {
                    appTheme = AppTheme.light;
                  } else {
                    appTheme = AppTheme.light;
                  }

                  print(appTheme);

                  context
                      .read<ThemeBloc>()
                      .add(TypeThemeEvent(appTheme: appTheme));
                },
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
