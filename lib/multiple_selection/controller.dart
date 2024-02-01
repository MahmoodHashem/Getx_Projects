
import 'model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Controller extends GetxController{

  Map<Category, bool> _categories = {
    Category('Item one', Colors.blue): false,
    Category('Item two', Colors.pink) : false,
    Category('Item Three', Colors.limeAccent): false,
  }.obs;

  get categories => _categories.entries.map((e) => e.key).toList();


  void toggle(Category item){
    _categories[item] = !(_categories[item] ?? true);
  }

  get selectedCategories => _categories.entries.where((element) => element.value).map((e) => e.key).toList();


}