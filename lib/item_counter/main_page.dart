

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_projects/item_counter/my_cart_page.dart';
import 'get_controller.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);


  Controller c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text('Books', style: TextStyle(
                      fontSize: 30,
                      color: Colors.orange,
                    ),),
                    Expanded(child: Container()),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: IconButton(onPressed: (){
                        c.incrementBook();
                      }, icon: Icon(Icons.add)),
                    ),
                    SizedBox(
                      width:25,
                    ),
                    Obx(() =>Text(c.books.toString(), style: TextStyle(fontSize: 20),)),
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: IconButton(onPressed: (){
                        c.decrementBook();
                      }, icon: Icon(Icons.remove)),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text('Pens', style: TextStyle(
                      fontSize: 30,
                      color: Colors.orange,
                    ),),
                    Expanded(child: Container()),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: IconButton(onPressed: (){
                        c.incrementPen();
                      }, icon: Icon(Icons.add)),
                    ),
                    SizedBox(
                      width:25,
                    ),
                    Obx(() =>Text(c.pens.toString(), style: TextStyle(fontSize: 20),)),
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: IconButton(onPressed: (){
                        c.decrementPen();
                      }, icon: Icon(Icons.remove)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
        Get.to(()=> MyCart());
      }, label: Text("My Cart")),
    );
  }
}
