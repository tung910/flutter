import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_learn_1/routes.dart';
import 'package:flutter_application_learn_1/todo_list/data.dart';
import 'package:flutter_application_learn_1/todo_list_bloc/todo_list_bloc.dart';
import 'package:flutter_application_learn_1/todo_list_bloc/todo_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoListBloc(TodoListState([TodoEntity(
          priority: Priority.low,
          title: 'Quet Nha De',
          description:
          'Supporting line text lorem ipsum dolor sit amet, consectetur,')])),
      child: MaterialApp.router(
        routerConfig: _appRouter.config(),
        debugShowCheckedModeBanner: false,
        title: 'flutter',
      ),
    );
  }
}

// assuing this is the root widget of your App
class App extends StatelessWidget {
  // make sure you don't initiate your router
  // inside of the build function.
  final _appRouter = AppRouter();

  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
    );
  }
}

@RoutePage()
class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  final String title = 'Tung';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Open shopping cart',
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
      body: const SafeArea(
          child: Expanded(
        // nested routes will be rendered here
        child: AutoRouter(),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
      ),
      bottomNavigationBar: Row(
        children: const [Icon(Icons.login), Icon(Icons.logo_dev)],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
