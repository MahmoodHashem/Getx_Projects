

import 'package:flutter/material.dart';
import 'package:getx_projects/to_do/controller.dart';
import 'package:getx_projects/to_do/done.dart';
import 'package:getx_projects/to_do/model.dart';
import 'package:get/get.dart';


class TodoView extends StatelessWidget {
   TodoView({Key? key}) : super(key: key);

  late Task task;

  Controller c = Get.put(Controller());

  TextEditingController title = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do"),
        actions: [
          IconButton(onPressed: (){
            Get.to(()=> DonePage());
          }, icon: Icon(Icons.done))
        ],
      ),
      body: Obx( ()=> ListView.builder(
          itemCount: c.tasks.length ,
            itemBuilder: (context, index){
              return Obx( ()=> CheckboxListTile(
                      value: c.taskDone[index],
                      onChanged: (value){
                        c.toggleTaskCompletion(index);
                        print(c.taskDone);
                      },
                      title: Text(
                        c.tasks[index].title,
                        style: TextStyle(
                          decoration: c.taskDone[index] ? TextDecoration.lineThrough : TextDecoration.none,
                        ), ),
                    ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(
            context: context,
            builder: (context){
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      autofocus: true,
                      controller: title,
                      decoration: InputDecoration(
                        hintText: 'Write your todo',
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: (){
                        task = Task(title: title.text);
                        c.addTask(task);
                        Get.back();
                        title.clear();
                      },
                      child: Text("Add ", ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      minimumSize: Size(150, 70)
                    ),

                  )
                ],
              );
            });
      },
      child: Icon(Icons.add),
      tooltip: 'Add new task',
      ),
    );
  }
}
