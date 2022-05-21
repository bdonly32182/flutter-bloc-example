part of 'countera_bloc.dart';

abstract class CounteraEvent extends Equatable {
  const CounteraEvent();

  @override
  List<Object> get props => [];
}
 class CounteraEventAdd extends CounteraEvent {}

 class CounteraEventReset extends CounteraEvent {}