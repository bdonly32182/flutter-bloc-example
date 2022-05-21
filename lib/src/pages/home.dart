import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/src/bloc/counter_a_bloc/bloc/countera_bloc.dart';
import 'package:flutter_bloc_example/src/pages/another.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/another');
            },
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Counter A:',
            ),
            BlocBuilder<CounteraBloc, CounteraState>(
              builder: (context, state) {
                return Text(
                  '${state.counter}',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () =>
                context.read<CounteraBloc>().add(CounteraEventAdd()),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
            heroTag: Text("Increment A"),
          ),
          FloatingActionButton(
            onPressed: () =>
                context.read<CounteraBloc>().add(CounteraEventReset()),
            tooltip: 'Reset',
            child: const Icon(Icons.restore),
            heroTag: Text("Reset A"),
          ),
        ],
      ),
    );
  }
}
