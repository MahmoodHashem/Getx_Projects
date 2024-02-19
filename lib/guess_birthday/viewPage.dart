

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'fistSet.dart';

class ViewPage extends StatelessWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('حدس تاریخ تولد '),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '''این برنامه برای حدس تاریخ تولد تان ساخته شده است که فقط جنبه سرگرمی دارد. 
            برای شروع دکمه پایین را بزنید ''',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 191,
            height: 50,
            decoration:BoxDecoration(
              color: Color(0xff68B5CE),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: TextButton(onPressed: (){
                Get.to(()=> FirstSet());
              }, child: Text("Start",
                style: TextStyle(fontSize: 30, color: Colors.white),)),
            ),
          )
        ],
      ),
    );
  }
}
