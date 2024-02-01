
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';
import 'category_widget.dart';


class FilterView extends StatelessWidget {
  FilterView({Key? key}) : super(key: key);

  final Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: controller.selectedCategories.length,
          itemBuilder: (context, index){
            return CategoryWidget(category: controller.selectedCategories[index]);
          }),
    );
  }
}
