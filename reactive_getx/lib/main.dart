import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_getx/view/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(home: HomePage());
  }
}
