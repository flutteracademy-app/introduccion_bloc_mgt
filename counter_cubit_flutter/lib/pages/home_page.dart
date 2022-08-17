import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introduccion_bloc_mgt/cubits/counter/counter_cubit.dart';
import 'package:introduccion_bloc_mgt/pages/other_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<CounterCubit>(context).increment();
            },
            child: const Icon(Icons.add),
            heroTag: 'increment',
          ),
          const SizedBox(
            width: 10.0,
          ),
          FloatingActionButton(
            onPressed: () {
              BlocProvider.of<CounterCubit>(context).decrement();
            },
            child: const Icon(Icons.remove),
            heroTag: 'decrement',
          ),
        ],
      ),
      body: BlocConsumer<CounterCubit, CounterState>(
        listener: (context, state) {
          if (state.counter == 2) {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Text('Counter es ${state.counter}'),
                );
              },
            );
          }
          if (state.counter == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const OtherPage();
                },
              ),
            );
          }
        },
        builder: (context, state) {
          return Center(
            child: Text(
              "${state.counter}",
              style: const TextStyle(fontSize: 50.0),
            ),
          );
        },
      ),

      //  BlocListener<CounterCubit, CounterState>(
      //   listener: (context, state1) {
      //     if (state1.counter == 2) {
      //       showDialog(
      //         context: context,
      //         builder: (context) {
      //           return AlertDialog(
      //             content: Text('Counter es ${state1.counter}'),
      //           );
      //         },
      //       );
      //     }
      //   },
      //   child: BlocBuilder<CounterCubit, CounterState>(
      //     builder: (context, state2) {
      //       return Center(
      //         child: Text(
      //           "${state2.counter}",
      //           style: const TextStyle(fontSize: 50.0),
      //         ),
      //       );
      //     },
      //   ),
      // ),
    );
  }
}
