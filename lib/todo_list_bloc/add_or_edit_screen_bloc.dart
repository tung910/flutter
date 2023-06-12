import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_learn_1/todo_list/data.dart';
import 'package:flutter_application_learn_1/todo_list_bloc/todo_list_bloc.dart';
import 'package:flutter_application_learn_1/todo_list_bloc/todo_list_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_application_learn_1/todo_list/data.dart';

const List<String> list = <String>['high', 'low', 'medium'];

@RoutePage()
class AddOrEditBlocTodoScreen extends StatelessWidget {
  AddOrEditBlocTodoScreen({super.key, this.todo});
  TodoEntity? todo;
  String title = '';
  String desc = '';
  Priority priority = Priority.low;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Todo Bloc'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(103, 80, 164, 1),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: DropdownButtonFormField(
            value: 'high',
            onChanged: (String? value) {},
            items: list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            borderRadius: BorderRadius.circular(10.0),
            decoration: InputDecoration(
                labelText: 'Priority',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: TextFormField(
            onChanged: (String value) {
              title = value;
            },
            decoration: InputDecoration(
                hintText: 'Input title',
                labelText: 'Title',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: TextFormField(
            onChanged: (String value) {
              desc = value;
            },
            decoration: InputDecoration(
                hintText: 'Input description',
                labelText: 'Description',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                )),
          ),
        )
      ]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: FilledButton(
          onPressed: () => {context.read<TodoListBloc>().add(TodoAddEvent(
            TodoEntity(priority: priority, title: title, description: desc)
          ))},
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(
                  Color.fromRGBO(103, 80, 164, 1))),
          child: const Text(
            'Add',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
