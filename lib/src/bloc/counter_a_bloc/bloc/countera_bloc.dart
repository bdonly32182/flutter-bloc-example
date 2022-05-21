import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'countera_event.dart';
part 'countera_state.dart';

class CounteraBloc extends Bloc<CounteraEvent, CounteraState> {
  CounteraBloc() : super(const CounteraState(counter: 20)) {
    // event add counter
    on<CounteraEventAdd>((event, emit) {
      emit(state.copyWith(counter: state.counter + 1));
    });

    // event reset counter
    on<CounteraEventReset>((event, emit) {
      emit(state.copyWith(counter: 0));
    });
  }
}
