import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:getx_demo/controllers/base_controller.dart';

class ShoppingPage extends GetView<BaseController> {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List cardData = Get.arguments['data'];

    return Scaffold(
      appBar: AppBar(title: const Text('Shopping Page')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          Obx(
            () => Text(
              '${controller.counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: ListView.builder(
              itemCount: cardData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(cardData[index]['name']),
                  trailing: Text("${cardData[index]['quantity']}"),
                );
              },
            ),
          ),
          const SizedBox(height: 30),
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: const Text('Go To Home Page'),
          ),
        ],
      ),
    );
  }
}
