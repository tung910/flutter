import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_learn_1/routes.gr.dart';
import 'package:flutter_application_learn_1/todo_list/data.dart';
import 'package:flutter_application_learn_1/todo_list/todo_controller.dart';
import 'package:provider/provider.dart';

@RoutePage()
class TodoListScreen extends StatefulWidget {
  const TodoListScreen({
    super.key,
  });

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  late TodoEntity result;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Todo List App'),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(103, 80, 164, 1),
        ),
        body: Consumer<TodoController>(
            builder: (context, value, child) => ListView.builder(
                itemCount: value.todoList.length,
                itemBuilder: (context, index) => TodoItem(
                    title: value.todoList[index].title,
                    description: value.todoList[index].description,
                    priority: value.todoList[index].priority,
                    index: index))),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
            // AutoRouter.of(context).pushNamed('/addtodo'),
            AutoRouter.of(context).push(AddTodoRoute())
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
      required this.index,
      this.id});

  final Priority priority;
  final String title;
  final String description;
  final int? id;
  final int? index;

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
            GestureDetector(
                onTap: () => {
                      AutoRouter.of(context).push(AddTodoRoute(
                          title: title,
                          description: description,
                          priority: priority,
                          index: index,
                          isEdit: true))
                    },
                child: Image.asset('assets/images/edit.png')),
            GestureDetector(
                onTap: () => {context.read<TodoController>().onDelete(index)},
                child: Image.asset('assets/images/bin.png')),
          ],
        ),
      ),
    );
  }
}
