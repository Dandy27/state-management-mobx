import 'package:mobx/mobx.dart';
part 'counter.g.dart';

var value = 0;

class Counter = CounterBase with _$Counter;

abstract class CounterBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
