


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

class DonePage extends StatelessWidget {
  DonePage({Key? key}) : super(key: key);


  Controller c = Get.put(Controller());


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Done to-dos'),
        ),
        body: ListView.builder(
          itemCount: c.tasks.length,
            itemBuilder: (context, index){
              if(c.tasks[index].isDone){
                return CheckboxListTile(
                  value: true,
                  onChanged: (value){},
                  title: Text(c.tasks[index].title),
                );
              }else{
                return SizedBox();
              }
            }),
      ),
    );
  }
}
