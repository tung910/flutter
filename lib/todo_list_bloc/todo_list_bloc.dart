import 'package:flutter_application_learn_1/todo_list/data.dart';
import 'package:flutter_application_learn_1/todo_list_bloc/todo_list_event.dart';
import 'package:flutter_application_learn_1/todo_list_bloc/todo_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoListBloc extends Bloc<TodoListEvent, TodoListState> {
  TodoListBloc(super.initialState) {

    on<TodoListEvent>((event, emit) => {
          if (event is TodoAddEvent)
            {
              state.todoList.add(value),
              print(state.todoList),
              emit(state.todoList as TodoListState)
            }
        });

  }

  TodoEntity get value => value;

  set newTodoList(void newTodoList) {}
}
