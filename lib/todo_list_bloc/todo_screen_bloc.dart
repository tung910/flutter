import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_learn_1/todo_list/data.dart';
import 'package:flutter_application_learn_1/todo_list_bloc/todo_list_bloc.dart';
import 'package:flutter_application_learn_1/todo_list_bloc/todo_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class TodoListScreenBloc extends StatefulWidget {
  const TodoListScreenBloc({
    super.key,
  });

  @override
  State<TodoListScreenBloc> createState() => _TodoListScreenBlocState();
}

class _TodoListScreenBlocState extends State<TodoListScreenBloc> {
  late TodoEntity result;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Todo List Bloc App'),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(103, 80, 164, 1),
        ),
        body: BlocConsumer<TodoListBloc, TodoListState>(
            builder: (context, state) => ListView.builder(
                itemCount: state.todoList.length,
                itemBuilder: (context, index) => TodoItem(
                      title: state.todoList[index].title,
                      description: state.todoList[index].description,
                      priority: state.todoList[index].priority,
                    )),
            listener: (_, __) {}),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
            AutoRouter.of(context).pushNamed('/add_or_edit_bloc'),
          },
          backgroundColor: const Color.fromRGBO(236, 230, 240, 1),
          child: const Icon(Icons.add, color: Color.fromRGBO(103, 80, 164, 1)),
        ),
      ),
    );
  }
}

class TodoItem extends StatelessWidget {
  const TodoItem(
      {super.key,
      required this.priority,
      required this.title,
      required this.description,
      this.id});

  final Priority priority;
  final String title;
  final String description;
  final int? id;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        color: const Color.fromRGBO(254, 247, 255, 1), //254, 247, 255, 1
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(priority.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                      )),
                  Text(title,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16)),
                  Text(description,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400, fontSize: 14))
                ],
              ),
            ),
            Image.asset('assets/images/edit.png'),
            Image.asset('assets/images/bin.png'),
          ],
        ),
      ),
    );
  }
}
