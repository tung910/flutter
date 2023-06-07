import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_application_learn_1/todo_list/data.dart';

const List<String> list = <String>['high', 'low', 'medium'];

@RoutePage()
class AddTodoScreen extends StatefulWidget {
  const AddTodoScreen({super.key});

  @override
  State<AddTodoScreen> createState() => _AddTodoScreenState();
}

class _AddTodoScreenState extends State<AddTodoScreen> {
  final List<String> textFieldsValue = [];
  onPressed(context) {
    textFieldsValue.clear();
    _formKey.currentState?.validate();
print(textFieldsValue);
    // AutoRouter.of(context).pop(true);
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Todo'),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(103, 80, 164, 1),
      ),
      body: Form(
          key: _formKey,
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: DropdownButtonFormField(
                value: 'high',
                validator: (value) {
                  textFieldsValue.add(value!);
                  return;
                },
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
                decoration: InputDecoration(
                    hintText: 'Input title',
                    labelText: 'Title',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    )),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  } else {
                    textFieldsValue.add(value);
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Input description',
                    labelText: 'Description',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    )),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  } else {
                    textFieldsValue.add(value);
                  }
                  return null;
                },
              ),
            )
          ])),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: FilledButton(
          onPressed: () => onPressed(context),
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
