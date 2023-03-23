import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/base_controller.dart';
import 'package:getx_demo/models/counter.dart';

void main() {
  late Counter counter;
  late BaseController controller;

  group('Counter', () {
    setUp(() {
      counter = Counter();
      controller = BaseController();
    });

    test('value should start at 0', () {
      expect(counter.value, 0);
    });

    test('value should be incremented', () {
      counter.increment();
      expect(counter.value, 1);
    });

    test('value should be decremented', () {
      counter.decrement();
      expect(counter.value, -1);
    });

    test('find sum of duplicate numbers', () {
      final StreamController<int> streamController = StreamController<int>();
      final Stream<int> sumStream = streamController.stream;
      int sum1 = counter.findSumOfDuplicateNum([
        [1, 2, 3],
        [5, 3, 9],
        [2, 8, 9],
      ]);
      streamController.add(sum1);
      expect(sum1, 14);

      int sum2 = counter.findSumOfDuplicateNum([
        [1, 2, 3],
        [5, 3, 4],
        [2, 8, 9],
      ]);
      streamController.add(sum2);
      expect(sum2, 5);

      int sum3 = counter.findSumOfDuplicateNum([
        [1, 2, 3],
        [5, 6, 4],
        [9, 8, 7],
      ]);
      expect(sum3, 0);

      expect(sumStream, emitsInOrder([14, 5]));
    });

    test('''
state of the reactive variable "name" across all of its lifecycles
        ''', () {
      expect(controller.name.value, 'amit mallah');

      Get.put(controller);
      expect(controller.name.value, 'amitchandra');

      controller.changeName();
      expect(controller.name.value, 'amitchandra mallah');

      Get.delete<BaseController>();

      expect(controller.name.value, '');
    });
  });
}
