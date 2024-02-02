

import 'package:flutter/material.dart';
import 'package:getx_projects/to_do/controller.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);


  Controller c = Get.put(Controller());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: c.selectedIndex,
          onTap: (index){
            c.onSelectedIndex(index);
          },
          items:  [
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Page'),
            BottomNavigationBarItem(
              icon: Icon(Icons.done),
              label: "Done To-Dos",
            )
          ]),
      body: c.pageIndices[c.selectedIndex],
    );
  }
}
