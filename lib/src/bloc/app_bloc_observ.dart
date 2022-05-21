
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObServer extends BlocObserver {

  @override
  void onTransition(Bloc bloc, Transition transition) {
    print(" AppBlocTransaction" + transition.toString());
    // TODO: implement onTransition
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print(" AppBlocError" + stackTrace.toString());
    // TODO: implement onError
    super.onError(bloc, error, stackTrace);
  }
}