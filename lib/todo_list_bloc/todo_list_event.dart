import 'package:flutter_application_learn_1/todo_list/data.dart';

abstract class TodoListEvent {}

class TodoAddEvent extends TodoListEvent {
  TodoAddEvent(TodoEntity todoEntity);
}

class TodoUpdateEvent extends TodoListEvent {
  TodoUpdateEvent();
}
