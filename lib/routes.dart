import 'package:get/route_manager.dart';
import 'package:getx_demo/bindings/base_binding.dart';

import 'middleware/auth_middleware.dart';
import 'pages/counter_page.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'pages/shopping_page.dart';

class Routes {
  Routes._();

  static const initial = '/counter';
  static const login = '/login';
  static const home = '/home';
  static const shopping = '/shopping';

  static final routes = [
    GetPage(
      name: initial,
      binding: BaseBinding(),
      page: () => CounterPage(title: 'GetX Demo'),
    ),
    GetPage(
      name: login,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: home,
      page: () => const HomePage(),
    ),
    GetPage(
      name: shopping,
      binding: BaseBinding(),
      middlewares: [AuthMiddleware()],
      page: () => const ShoppingPage(),
    )
  ];
}
