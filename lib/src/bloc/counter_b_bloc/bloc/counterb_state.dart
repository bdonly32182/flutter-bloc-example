part of 'counterb_bloc.dart';

class CounterbState extends Equatable {
  final int counter;
  const CounterbState({required this.counter});

  CounterbState copyWith({int? counter}){
    return CounterbState(counter: counter ?? this.counter);
  }
  
  @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }

  @override
  List<Object> get props => [counter];
}

