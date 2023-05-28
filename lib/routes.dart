import 'package:auto_route/auto_route.dart';
import 'package:flutter_application_learn_1/routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        //HomeScreen is generated as HomeRoute because
        //of the replaceInRouteName property
        // AutoRoute(path: '', page: MyHomePage.page, children: [
        //   RedirectRoute(path: '', redirectTo: 'login1'),
        AutoRoute(page: TodoListRoute.page, path: '/todolist', initial: true),
        AutoRoute(page: AddTodoRoute.page, path: '/addtodo'),
        AutoRoute(page: MessengerRoute.page, path: '/messenger'),
      ];
}
