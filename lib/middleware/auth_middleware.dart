import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/base_controller.dart';
import 'package:getx_demo/routes.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    final baseService = Get.find<BaseController>();
    if (baseService.isAuthenticated.value == false) {
      return const RouteSettings(name: Routes.login);
    }
  }
}
