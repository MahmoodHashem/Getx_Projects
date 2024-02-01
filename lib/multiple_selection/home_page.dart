
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_projects/multiple_selection/controller.dart';
import 'category_widget.dart';
import 'filter_view.dart';

class MainView extends StatelessWidget {
  MainView({Key? key}) : super(key: key);

  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Obx(() => ListView.builder(
          itemCount: controller.categories.length,
          itemBuilder: (_, index){
            return CheckboxListTile(
              value: controller.selectedCategories.contains(controller.categories[index]),
              onChanged: (value){
                controller.toggle(controller.categories[index]);
              },
              title: CategoryWidget(category: controller.categories[index]) ,
            );

          }),),

      floatingActionButton: FloatingActionButton.extended(onPressed: (){
        Get.to(()=> FilterView());
      }, label: Text("Checked")),
    );
  }
}
