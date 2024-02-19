
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_projects/guess_birthday/controller.dart';
import 'package:getx_projects/guess_birthday/viewPage.dart';
//import 'package:getx_projects/item_counter/get_controller.dart';
import 'widgets/sets_page.dart';
import 'widgets/result.dart';

const numberStyle = TextStyle(fontSize: 25 );


class FirstSet extends StatelessWidget {
  FirstSet({Key? key}) : super(key: key);


  var first = [1,3,5,7,9,11,13,15,17,19,21,23,25,27,29,31];
  var second = [2,3,6,7,10,11,14,15,18,19,22,23,26,27,30,31];
  var third = [4,5,6,7,12,13,14,15,20,21,22,23,28,29,30,31];
  var fourth = [8,9,10,11,12,13,14,15,24,25,26,27,28,29,30,31];
  var fifth = [16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31];

  Widget showSet(int index){
    
    switch(index){
      case 1: return Sets(days: first);
      case 2: return Sets(days: second); 
      case 3: return Sets(days: third); 
      case 4: return Sets(days: fourth); 
      case 5: return Sets(days: fifth); 
      default: return Center(
        child: Result(c: c),
      );
    }
  }

  GuessController c = Get.put(GuessController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('حدس تاریخ تولد '),
        centerTitle: true,
      ),
      body: Obx(() => showSet(c.index.value))
    );
  }
}




