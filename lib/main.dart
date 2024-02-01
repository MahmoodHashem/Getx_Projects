import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_projects/multiple_selection/filter_view.dart';
import 'package:getx_projects/multiple_selection/home_page.dart';


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
      home:  MainView(),
    );
  }
}