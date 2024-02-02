
import 'package:getx_projects/to_do/done.dart';
import 'package:getx_projects/to_do/todo_list.dart';

import 'model.dart';
import 'package:get/get.dart';

class Controller extends GetxController{

  List<Task> tasks = <Task>[].obs;
  int selectedIndex = 0;
  List pageIndices = [
    TodoView(),
    DonePage(),
  ].obs;

  void addTask(Task task){
    tasks.add(task);
    update();
  }

  void toggleTaskCompletion(int index){
    tasks[index].isDone = !tasks[index].isDone;
  }

  void onSelectedIndex(int index){
    selectedIndex = index;
  }


}