
import 'package:flutter/cupertino.dart';
import 'package:getx_projects/to_do/done.dart';
import 'package:getx_projects/to_do/todo_list.dart';

import 'model.dart';
import 'package:get/get.dart';

class Controller extends GetxController{

  List<Task> tasks = <Task>[].obs;
  List<bool> taskDone = <bool>[].obs;

  void addTask(Task task){
    tasks.add(task);
    taskDone.add(false);
  }
  void toggleTaskCompletion(int index){
    taskDone[index] = !taskDone[index];

  }



}