part of 'countera_bloc.dart';

class CounteraState extends Equatable {
  final int counter;
  const CounteraState({required this.counter});

  // use for set new state
  CounteraState copyWith({int? counter}) {
    return CounteraState(counter: counter ?? this.counter);
  }

  @override
  String toString() {
    // TODO: implement toString
    return "count:$counter";
  }

  @override
  List<Object> get props => [counter]; // ต้องใส่ตัวแปรที่จะใช้เป็น state
}
