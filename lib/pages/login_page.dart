import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_demo/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: Center(
        child: TextButton(
          onPressed: () {
            Get.offAllNamed(Routes.home);
          },
          child: const Text('Go To Home Page'),
        ),
      ),
    );
  }
}
