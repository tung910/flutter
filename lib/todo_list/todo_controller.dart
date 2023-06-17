import 'package:flutter/material.dart';
import 'package:flutter_application_learn_1/todo_list/data.dart';

class TodoController with ChangeNotifier {
  final List<TodoEntity> todoList = <TodoEntity>[
    TodoEntity(
        priority: Priority.high,
        title: 'Rua Bat',
        description:
            'Supporting line text lorem ipsum dolor sit amet, consectetur,'),
  ];

  void addTodo(title, priority, description) {
    todoList.add(
        TodoEntity(priority: priority, title: title, description: description));
    notifyListeners();
  }

  void updateTodo(index, title, priority, description) {
    [...todoList].replaceRange(
        index,
        index + 1,
        TodoEntity(priority: priority, title: title, description: description)
            as Iterable<TodoEntity>);
    notifyListeners();
  }

  void onDelete(id) {
    todoList.removeAt(id);
    notifyListeners();
  }
}
