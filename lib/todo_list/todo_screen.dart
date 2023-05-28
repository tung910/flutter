import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_learn_1/todo_list/data.dart';

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
        body: ListView.builder(
            itemCount: todoList.length,
            itemBuilder: (context, index) => TodoItem(
                  title: todoList[index].title,
                  description: todoList[index].description,
                  priority: todoList[index].priority,
                )),
        floatingActionButton: FloatingActionButton(
          onPressed: () async => {
            result = await AutoRouter.of(context).pushNamed('/addtodo')
                as TodoEntity,
            print(result)
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
