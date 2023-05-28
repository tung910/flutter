// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter_application_learn_1/login.dart' as _i1;
import 'package:flutter_application_learn_1/login_screen.dart' as _i2;
import 'package:flutter_application_learn_1/main.dart' as _i3;
import 'package:flutter_application_learn_1/messenger_screen.dart' as _i4;
import 'package:flutter_application_learn_1/todo_list/add_screen.dart' as _i5;
import 'package:flutter_application_learn_1/todo_list/todo_screen.dart' as _i6;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    LoginRoute2.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginScreen2(),
      );
    },
    LoginRoute1.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginScreen1(),
      );
    },
    MyHomePage.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.MyHomePage(),
      );
    },
    MessengerRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MessengerScreen(),
      );
    },
    AddTodoRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.AddTodoScreen(),
      );
    },
    TodoListRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.TodoListScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.LoginScreen2]
class LoginRoute2 extends _i7.PageRouteInfo<void> {
  const LoginRoute2({List<_i7.PageRouteInfo>? children})
      : super(
          LoginRoute2.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute2';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginScreen1]
class LoginRoute1 extends _i7.PageRouteInfo<void> {
  const LoginRoute1({List<_i7.PageRouteInfo>? children})
      : super(
          LoginRoute1.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute1';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MyHomePage]
class MyHomePage extends _i7.PageRouteInfo<void> {
  const MyHomePage({List<_i7.PageRouteInfo>? children})
      : super(
          MyHomePage.name,
          initialChildren: children,
        );

  static const String name = 'MyHomePage';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MessengerScreen]
class MessengerRoute extends _i7.PageRouteInfo<void> {
  const MessengerRoute({List<_i7.PageRouteInfo>? children})
      : super(
          MessengerRoute.name,
          initialChildren: children,
        );

  static const String name = 'MessengerRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.AddTodoScreen]
class AddTodoRoute extends _i7.PageRouteInfo<void> {
  const AddTodoRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AddTodoRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddTodoRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.TodoListScreen]
class TodoListRoute extends _i7.PageRouteInfo<void> {
  const TodoListRoute({List<_i7.PageRouteInfo>? children})
      : super(
          TodoListRoute.name,
          initialChildren: children,
        );

  static const String name = 'TodoListRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
