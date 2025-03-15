import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'counter_controller.dart';

class SecondPage extends StatelessWidget {
  SecondPage({super.key});
  final CounterController _counterController = Get.find();

  @override
  Widget build(BuildContext context) {
    final String? argument = Get.arguments;

    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  'Counter: ${_counterController.counter}',
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )),
            const SizedBox(height: 20),
            Text(argument ?? 'No arguments', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Kembali"),
            ),
          ],
        ),
      ),
    );
  }
}
