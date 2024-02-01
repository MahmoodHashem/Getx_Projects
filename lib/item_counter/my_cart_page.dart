

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'get_controller.dart';

class MyCart extends StatelessWidget {
  MyCart({Key? key}) : super(key: key);

  Controller c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text("Total", style: TextStyle(fontSize: 30),), 
              Obx(() => Text(c.sum.toString(), style: TextStyle(fontSize: 20),)),
              ElevatedButton(onPressed: (){
                Get.back();
              }, child: Text("Go back"))
            ],
          ),
        ),
      ),
    );
  }
}
