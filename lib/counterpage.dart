import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetx/secondpage.dart';
import 'counter_controller.dart';

class CounterPage extends StatelessWidget {
  CounterPage({super.key});
  final CounterController _counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  'Counter: ${_counterController.counter}',
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  "Berhasil", 
                  "Data telah disimpan!",
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.greenAccent,
                  colorText: Colors.white,
                );
              },
              child: const Text("Tampilkan Snackbar"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "Konfirmasi",
                  middleText: "Apakah Anda yakin ingin menghapus data?",
                  textConfirm: "Ya",
                  textCancel: "Tidak",
                  onConfirm: () {
                    Get.back();
                  },
                  onCancel: () {},
                );
              },
              child: const Text("Tampilkan Dialog"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    color: Colors.white,
                    child: Wrap(
                      children: [
                        ListTile(
                          leading: Icon(Icons.share),
                          title: Text('Bagikan'),
                          onTap: () {
                            Get.back();
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.link),
                          title: Text('Salin Link'),
                          onTap: () {
                            Get.back();
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: const Text("Tampilkan BottomSheet"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.to(SecondPage(), arguments: "Hello from first page");
              },
              child: const Text("Pindah Halaman"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          _counterController.increment();
        },
      ),
    );
  }
}
