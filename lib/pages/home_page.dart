import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:getx_demo/controllers/base_controller.dart';
import 'package:getx_demo/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BaseController baseController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          Obx(
            () => Switch(
              value: baseController.isAuthenticated.value,
              activeColor: Colors.red,
              onChanged: (bool value) {
                baseController.isAuthenticated.value = value;
              },
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Get.offAllNamed(Routes.initial);
              },
              child: const Text('Go To Counter Page'),
            ),
            TextButton(
              onPressed: () {
                Map response = {
                  "data": [
                    {"name": "Shirt", "quantity": 2},
                    {"name": "Jeans", "quantity": 1},
                    {"name": "Tie", "quantity": 1}
                  ],
                  "message": "All card data get successfully"
                };
                Get.toNamed(Routes.shopping, arguments: response);
              },
              child: const Text('Go To Shopping Page'),
            ),
          ],
        ),
      ),
    );
  }
}
