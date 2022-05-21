import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counterb_event.dart';
part 'counterb_state.dart';

class CounterbBloc extends Bloc<CounterbEvent, CounterbState> {
  CounterbBloc() : super(const CounterbState(counter: 5)) {
    on<CounterbEventAdd>((event, emit) {
      emit(state.copyWith(counter: state.counter + 1));
    });

    on<CounterbEventReset>((event, emit) {
      emit(state.copyWith(counter: 0));
    });
  }
}
