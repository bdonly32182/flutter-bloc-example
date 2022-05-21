part of 'counterb_bloc.dart';

abstract class CounterbEvent extends Equatable {
  const CounterbEvent();

  @override
  List<Object> get props => [];
}

class CounterbEventAdd extends CounterbEvent{}
class CounterbEventReset extends CounterbEvent{}