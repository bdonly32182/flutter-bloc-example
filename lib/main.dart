import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_example/src/bloc/app_bloc_observ.dart';
import 'package:flutter_bloc_example/src/bloc/counter_a_bloc/bloc/countera_bloc.dart';
import 'package:flutter_bloc_example/src/bloc/counter_b_bloc/bloc/counterb_bloc.dart';
import 'package:flutter_bloc_example/src/pages/another.dart';
import 'package:flutter_bloc_example/src/pages/home.dart';

final Map<String, WidgetBuilder> routesMap = {
  "/home": (BuildContext context) => const MyHomePage(title: 'Home Page'),
  "/another": (BuildContext context) => const AnotherPage(),
};
void main() {
  // runApp(const MyApp());
  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
    blocObserver: AppBlocObServer(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final counterABloc = BlocProvider<CounteraBloc>(
      create: (context) => CounteraBloc(),
    );
    final counterBBloc = BlocProvider<CounterbBloc>(
      create: (context) => CounterbBloc(),
    );

    return MultiBlocProvider(
      providers: [counterABloc, counterBBloc],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: routesMap,
        initialRoute: "/home",
      ),
    );
  }
}
