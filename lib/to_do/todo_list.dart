

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
      bottomNavigationBar: BottomNavigationBar(
         onTap: (index){
           if(index == 1){
           }
         },
          
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Page'),
            BottomNavigationBarItem(
              icon: Icon(Icons.done),
              label: "Done To-Dos",


          )
          ]),
      appBar: AppBar(
        title: Text("To Do"),
      ),
      body: Column(
        children: [
          Obx( ()=> Expanded(
            child: ListView.builder(
                itemCount: c.tasks.length ,
                  itemBuilder: (context, index){
                    return Obx(
                      ()=> CheckboxListTile(
                          value: c.tasks[index].isDone,
                          onChanged: (value){
                            c.toggleTaskCompletion(index);
                            print(c.tasks[index].isDone);
                          },
                          title: Text(c.tasks[index].title),
                        ),
                    );
                  }),
          ),
          ),
          ElevatedButton(onPressed: (){
            Get.to(DonePage());
          }, child: Text('Done'))
        ],
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
