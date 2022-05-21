import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/src/bloc/counter_a_bloc/bloc/countera_bloc.dart';
import 'package:flutter_bloc_example/src/bloc/counter_b_bloc/bloc/counterb_bloc.dart';

class AnotherPage extends StatefulWidget {
  const AnotherPage({Key? key}) : super(key: key);

  @override
  State<AnotherPage> createState() => _AnotherPageState();
}

class _AnotherPageState extends State<AnotherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Another Page'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Counter A:',
                ),
                BlocBuilder<CounteraBloc, CounteraState>(
                  builder: (context, counterA) {
                    return Text(
                      '${counterA.counter}',
                      style: Theme.of(context).textTheme.headline4,
                    );
                  },
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Counter B:',
                ),
                BlocBuilder<CounterbBloc, CounterbState>(
                  builder: (context, counterB) {
                    return Text(
                      '${counterB.counter}',
                      style: Theme.of(context).textTheme.headline4,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
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
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () =>
                    context.read<CounterbBloc>().add(CounterbEventAdd()),
                tooltip: 'Increment B',
                child: const Icon(Icons.add),
                heroTag: Text("Increment B"),
              ),
              FloatingActionButton(
                onPressed: () =>
                    context.read<CounterbBloc>().add(CounterbEventReset()),
                tooltip: 'Reset B',
                child: const Icon(Icons.restore),
                heroTag: Text("Reset B"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
