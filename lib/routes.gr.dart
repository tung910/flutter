// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:flutter_application_learn_1/contacts_screen.dart' as _i1;
import 'package:flutter_application_learn_1/login.dart' as _i2;
import 'package:flutter_application_learn_1/login_screen.dart' as _i3;
import 'package:flutter_application_learn_1/main.dart' as _i4;
import 'package:flutter_application_learn_1/messenger_screen.dart' as _i5;
import 'package:flutter_application_learn_1/todo_list/add_screen.dart' as _i6;
import 'package:flutter_application_learn_1/todo_list/data.dart' as _i14;
import 'package:flutter_application_learn_1/todo_list/todo_screen.dart' as _i7;
import 'package:flutter_application_learn_1/todo_list_bloc/add_or_edit_screen_bloc.dart'
    as _i8;
import 'package:flutter_application_learn_1/todo_list_bloc/todo_screen_bloc.dart'
    as _i9;
import 'package:flutter_application_learn_1/tour/tour_detail.screen.dart'
    as _i10;
import 'package:flutter_application_learn_1/tour/tour_screen.dart' as _i11;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    ContactRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ContactScreen(),
      );
    },
    LoginRoute2.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginScreen2(),
      );
    },
    LoginRoute1.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginScreen1(),
      );
    },
    MyHomePage.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MyHomePage(),
      );
    },
    MessengerRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MessengerScreen(),
      );
    },
    AddTodoRoute.name: (routeData) {
      final args = routeData.argsAs<AddTodoRouteArgs>(
          orElse: () => const AddTodoRouteArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.AddTodoScreen(
          key: args.key,
          priority: args.priority,
          title: args.title,
          description: args.description,
          index: args.index,
          isEdit: args.isEdit,
        ),
      );
    },
    TodoListRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.TodoListScreen(),
      );
    },
    AddOrEditBlocTodoRoute.name: (routeData) {
      final args = routeData.argsAs<AddOrEditBlocTodoRouteArgs>(
          orElse: () => const AddOrEditBlocTodoRouteArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.AddOrEditBlocTodoScreen(
          key: args.key,
          todo: args.todo,
        ),
      );
    },
    TodoListRouteBloc.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.TodoListScreenBloc(),
      );
    },
    TourDetailRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.TourDetailScreen(),
      );
    },
    TourRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.TourScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.ContactScreen]
class ContactRoute extends _i12.PageRouteInfo<void> {
  const ContactRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ContactRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginScreen2]
class LoginRoute2 extends _i12.PageRouteInfo<void> {
  const LoginRoute2({List<_i12.PageRouteInfo>? children})
      : super(
          LoginRoute2.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute2';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginScreen1]
class LoginRoute1 extends _i12.PageRouteInfo<void> {
  const LoginRoute1({List<_i12.PageRouteInfo>? children})
      : super(
          LoginRoute1.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute1';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MyHomePage]
class MyHomePage extends _i12.PageRouteInfo<void> {
  const MyHomePage({List<_i12.PageRouteInfo>? children})
      : super(
          MyHomePage.name,
          initialChildren: children,
        );

  static const String name = 'MyHomePage';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MessengerScreen]
class MessengerRoute extends _i12.PageRouteInfo<void> {
  const MessengerRoute({List<_i12.PageRouteInfo>? children})
      : super(
          MessengerRoute.name,
          initialChildren: children,
        );

  static const String name = 'MessengerRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.AddTodoScreen]
class AddTodoRoute extends _i12.PageRouteInfo<AddTodoRouteArgs> {
  AddTodoRoute({
    _i13.Key? key,
    _i14.Priority? priority,
    String title = '',
    String description = '',
    int? index,
    bool isEdit = false,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          AddTodoRoute.name,
          args: AddTodoRouteArgs(
            key: key,
            priority: priority,
            title: title,
            description: description,
            index: index,
            isEdit: isEdit,
          ),
          initialChildren: children,
        );

  static const String name = 'AddTodoRoute';

  static const _i12.PageInfo<AddTodoRouteArgs> page =
      _i12.PageInfo<AddTodoRouteArgs>(name);
}

class AddTodoRouteArgs {
  const AddTodoRouteArgs({
    this.key,
    this.priority,
    this.title = '',
    this.description = '',
    this.index,
    this.isEdit = false,
  });

  final _i13.Key? key;

  final _i14.Priority? priority;

  final String title;

  final String description;

  final int? index;

  final bool isEdit;

  @override
  String toString() {
    return 'AddTodoRouteArgs{key: $key, priority: $priority, title: $title, description: $description, index: $index, isEdit: $isEdit}';
  }
}

/// generated route for
/// [_i7.TodoListScreen]
class TodoListRoute extends _i12.PageRouteInfo<void> {
  const TodoListRoute({List<_i12.PageRouteInfo>? children})
      : super(
          TodoListRoute.name,
          initialChildren: children,
        );

  static const String name = 'TodoListRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.AddOrEditBlocTodoScreen]
class AddOrEditBlocTodoRoute
    extends _i12.PageRouteInfo<AddOrEditBlocTodoRouteArgs> {
  AddOrEditBlocTodoRoute({
    _i13.Key? key,
    _i14.TodoEntity? todo,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          AddOrEditBlocTodoRoute.name,
          args: AddOrEditBlocTodoRouteArgs(
            key: key,
            todo: todo,
          ),
          initialChildren: children,
        );

  static const String name = 'AddOrEditBlocTodoRoute';

  static const _i12.PageInfo<AddOrEditBlocTodoRouteArgs> page =
      _i12.PageInfo<AddOrEditBlocTodoRouteArgs>(name);
}

class AddOrEditBlocTodoRouteArgs {
  const AddOrEditBlocTodoRouteArgs({
    this.key,
    this.todo,
  });

  final _i13.Key? key;

  final _i14.TodoEntity? todo;

  @override
  String toString() {
    return 'AddOrEditBlocTodoRouteArgs{key: $key, todo: $todo}';
  }
}

/// generated route for
/// [_i9.TodoListScreenBloc]
class TodoListRouteBloc extends _i12.PageRouteInfo<void> {
  const TodoListRouteBloc({List<_i12.PageRouteInfo>? children})
      : super(
          TodoListRouteBloc.name,
          initialChildren: children,
        );

  static const String name = 'TodoListRouteBloc';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i10.TourDetailScreen]
class TourDetailRoute extends _i12.PageRouteInfo<void> {
  const TourDetailRoute({List<_i12.PageRouteInfo>? children})
      : super(
          TourDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'TourDetailRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.TourScreen]
class TourRoute extends _i12.PageRouteInfo<void> {
  const TourRoute({List<_i12.PageRouteInfo>? children})
      : super(
          TourRoute.name,
          initialChildren: children,
        );

  static const String name = 'TourRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}
