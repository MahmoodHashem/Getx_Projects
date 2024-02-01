import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'item_counter/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx Demo',
      home:  HomePage(),
    );
  }
}