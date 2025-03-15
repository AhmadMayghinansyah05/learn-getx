import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetx/counterpage.dart';

void main(){
  runApp(app());
}

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: CounterPage(),
    );
  }
}