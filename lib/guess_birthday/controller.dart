

import 'package:get/get.dart';

class GuessController extends GetxController{

  var index = 1.obs;
  var birthday = 0.obs;

  void changeIndexWithYes() {
    if (index.value <= 5){
    switch(index.value){
      case 1 : birthday.value += 1;
      break;
      case 2 : birthday.value += 2;
      break;
      case 3 : birthday.value += 4;
      break;
      case 4 : birthday.value += 8;
      break;
      case 5 : birthday.value += 16;
      break;
    }
    index.value++;
    }
  }

  void changeIndexWithNo(){
    if(index.value <= 5){
      index.value++;
    }
  }

}