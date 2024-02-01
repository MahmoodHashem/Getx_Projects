

import 'package:flutter/material.dart';
import 'model.dart';

class CategoryWidget extends StatelessWidget {

  CategoryWidget({Key? key, required this.category}) : super(key: key);

  final Category category;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 70,
      decoration: BoxDecoration(
        color: category.color,
        borderRadius: BorderRadius.circular(10), 
      ),
      child: Center(
        child: Text(category.name),
      ),
    );
  }
}
