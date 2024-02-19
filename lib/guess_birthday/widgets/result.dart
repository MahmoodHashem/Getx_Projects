
import 'package:flutter/material.dart';
import 'package:getx_projects/guess_birthday/controller.dart';
import 'package:get/get.dart';
import 'package:getx_projects/guess_birthday/viewPage.dart';
class Result extends StatelessWidget {
  const Result({
    super.key,
    required this.c,
  });

  final GuessController c;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  color: Color(0xff86B3D1),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      offset: Offset(-5, 6),
                      blurRadius: 10,
                    ),],
                ),
                child: Obx(()=> RichText(
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'روز تولد تان\n ',
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),

                          TextSpan(
                            text: c.birthday.value.toString() + "-ام",
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.red,
                            ),
                          ),
                          TextSpan(
                              text: '\nماه است',
                              style: TextStyle(
                                fontSize: 40,
                              )
                          )
                        ]
                    )
                ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.offAll(()=> ViewPage());
                    },
                    child: Container(
                      child: Center(
                          child: Text('صفحه اصلی', textDirection: TextDirection.rtl,style: TextStyle(fontSize: 18),
                          )),
                      width: 140,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Color(0xff39E4AF),
                          borderRadius: BorderRadius.circular(22)
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      c.index.value = 1;
                      c.birthday.value = 0;
                    },
                    child: Container(
                      child: Center(
                          child: Text('امتحان دوباره', textDirection: TextDirection.rtl,style: TextStyle(fontSize: 18),
                          )),
                      width: 140,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Color(0xff39E4AF),
                          borderRadius: BorderRadius.circular(22)
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}