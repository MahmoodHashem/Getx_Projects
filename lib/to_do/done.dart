


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
        body: Obx(()=> ListView.builder(
            itemCount: c.taskDone.length,
              itemBuilder: (context, index){
                if(c.taskDone[index]){
                  return Obx(()=> CheckboxListTile(
                      value: c.taskDone[index],
                      onChanged: (value){
                        c.toggleTaskCompletion(index);
                      },
                      title: Text(c.tasks[index].title),
                    ),
                  );
                }else{
                  return SizedBox();
                }
              }),
        ),
      ),
    );
  }
}
