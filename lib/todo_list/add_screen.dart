// ignore_for_file: depend_on_referenced_packages

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_learn_1/todo_list/data.dart';
import 'package:flutter_application_learn_1/todo_list/todo_controller.dart';
import 'package:provider/provider.dart';

@RoutePage()
class AddTodoScreen extends StatelessWidget {
  AddTodoScreen(
      {super.key,
      this.priority,
      this.title = '',
      this.description = '',
      this.index,
      this.isEdit = false});
  bool isEdit = false;
  final int? index;
  Priority? priority;

  String title = '';

  String description = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Todo'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(103, 80, 164, 1),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: DropdownButtonFormField(
            value: Priority.high,
            onChanged: (Priority? value) {
              if (value != null) {
                priority = value;
              }
            },
            items: Priority.values
                .map<DropdownMenuItem<Priority>>((Priority value) {
              return DropdownMenuItem<Priority>(
                value: value,
                child: Text(value.name),
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
            onChanged: (newValue) {
              title = newValue;
            },
            initialValue: title,
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
            onChanged: (newValue) {
              description = newValue;
            },
            initialValue: description,
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
          onPressed: () => {
            if (isEdit)
              {
                context
                    .read<TodoController>()
                    .updateTodo(index, title, priority, description),
              }
            else
              {
                context
                    .read<TodoController>()
                    .addTodo(title, priority, description),
              },
            AutoRouter.of(context).pop(true)
          },
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
