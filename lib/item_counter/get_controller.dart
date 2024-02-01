

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController{

  var books = 0.obs;
  var pens = 0.obs;


  int get sum => books.value + pens.value;

  void incrementBook(){
    books.value++;
  }

  void decrementBook(){

    if(books.value <= 0){
      GetSnackBar(
        title: 'Books',
        icon: Icon(Icons.alarm),
      );
    }else {
      books.value--;
    }
  }

  void incrementPen(){
    pens.value++;
  }

  void decrementPen(){

    if(pens.value <= 0){
      GetSnackBar(
        title: "Pens",
        icon: Icon(Icons.alarm),
      );
    }else{
      pens.value--;
    }
  }


}