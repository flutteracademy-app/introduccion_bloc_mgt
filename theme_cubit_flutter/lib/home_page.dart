import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_cubit_flutter/cubits/theme/theme_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text(
            "Cambiar Tema",
            style: TextStyle(fontSize: 25),
          ),
          onPressed: () {
            context.read<ThemeCubit>().changeTheme();
          },
        ),
      ),
    );
  }
}
