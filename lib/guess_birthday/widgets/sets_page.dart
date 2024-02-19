
import 'package:flutter/material.dart';
import 'package:getx_projects/guess_birthday/fistSet.dart';
import 'package:getx_projects/guess_birthday/controller.dart';
import 'package:get/get.dart';
import 'package:getx_projects/guess_birthday/consts.dart';

class Sets extends StatelessWidget {
  Sets({
    super.key,
    required this.days
  });

  final List<int> days;

  GuessController c = Get.put(GuessController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 72,
          decoration: BoxDecoration(
              color: Color(0xffB4D2CD),
              borderRadius: BorderRadius.circular(14)
          ),
          child: const Center(
            child:  Text('آیا روز تولدتان در جدول پایین است', style: TextStyle(fontSize: 25)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: circleSize,
              height: circleSize,
              decoration: BoxDecoration(
                border: Border(
                  top: numberBorder,
                  left: numberBorder,
                  bottom:numberBorder,
                  right: numberBorder,
                ),
                borderRadius: BorderRadius.circular(border),
              ),
              child: Center(
                child: Text(days[0].toString(), style: numberStyle,),
              ),
            ),
            Container(

              width: circleSize,
              height: circleSize,
              decoration: BoxDecoration(
                border: const Border(
                  top: numberBorder,
                  left: numberBorder,
                  bottom:numberBorder,
                  right: numberBorder,
                ),
                borderRadius: BorderRadius.circular(border),
              ),
              child: Center(child: Text(days[1].toString(), style: numberStyle,)),
            ),
            Container(
              width: circleSize,
              height: circleSize,
              decoration: BoxDecoration(
                border: circleBorder,
                borderRadius: BorderRadius.circular(border),
              ), child: Center(child: Text(days[2].toString(), style: numberStyle,)),
            ),
            Container(
              width: circleSize,
              height: circleSize,
              decoration: BoxDecoration(
                border:circleBorder,
                borderRadius: BorderRadius.circular(border),
              ),child: Center(child: Text(days[3].toString(), style: numberStyle,)),
            ),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: circleSize,
              height: circleSize,
              decoration: BoxDecoration(
                border: circleBorder,
                borderRadius: BorderRadius.circular(border),
              ),child: Center(
              child: Text(days[4].toString(), style: numberStyle,),
            ),
            ),
            Container(
              width: circleSize,
              height: circleSize,
              decoration: BoxDecoration(
                border: circleBorder,
                borderRadius: BorderRadius.circular(border),
              ),child: Center(child: Text(days[5].toString(), style: numberStyle,)),
            ),
            Container(
              child: Center(child: Text(days[6].toString(), style: numberStyle,)),
              width: circleSize,
              height: circleSize,
              decoration: BoxDecoration(
                border: circleBorder,
                borderRadius: BorderRadius.circular(border),
              ),
            ),
            Container(
              child: Center(child: Text(days[7].toString(), style: numberStyle,)),
              width: circleSize,
              height: circleSize,
              decoration: BoxDecoration(
                border: circleBorder,
                borderRadius: BorderRadius.circular(border),
              ),
            ),
          ],
        ),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Center(
                child: Text(days[8].toString(), style: numberStyle,),
              ),
              width: circleSize,
              height: circleSize,
              decoration: BoxDecoration(
                border: circleBorder,
                borderRadius: BorderRadius.circular(border),
              ),
            ),
            Container(
              child: Center(child: Text(days[9].toString(), style: numberStyle,)),
              width: circleSize,
              height: circleSize,
              decoration: BoxDecoration(
                border: circleBorder,
                borderRadius: BorderRadius.circular(border),
              ),
            ),
            Container(
              child: Center(child: Text(days[10].toString(), style: numberStyle,)),
              width: circleSize,
              height: circleSize,
              decoration: BoxDecoration(
                border: circleBorder,
                borderRadius: BorderRadius.circular(border),
              ),
            ),
            Container(
              child: Center(child: Text(days[11].toString(), style: numberStyle,)),
              width: circleSize,
              height: circleSize,
              decoration: BoxDecoration(
                border: circleBorder,
                borderRadius: BorderRadius.circular(border),
              ),
            ),
          ],
        ),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Center(
                child: Text(days[12].toString(), style: numberStyle,),
              ),
              width: circleSize,
              height: circleSize,
              decoration: BoxDecoration(
                border: circleBorder,
                borderRadius: BorderRadius.circular(border),
              ),
            ),
            Container(
              child: Center(child: Text(days[13].toString(), style: numberStyle,)),
              width: circleSize,
              height: circleSize,
              decoration: BoxDecoration(
                border: circleBorder,
                borderRadius: BorderRadius.circular(border),
              ),
            ),
            Container(
              child: Center(child: Text(days[14].toString(), style: numberStyle,)),
              width: circleSize,
              height: circleSize,
              decoration: BoxDecoration(
                border: circleBorder,
                borderRadius: BorderRadius.circular(border),
              ),
            ),
            Container(
              child: Center(child: Text(days[15].toString(), style: numberStyle,)),
              width: circleSize,
              height: circleSize,
              decoration: BoxDecoration(
                border: circleBorder,
                borderRadius: BorderRadius.circular(border),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: (){
                c.changeIndexWithNo();
              },
              child: Container(
                child: Center(
                  child: Text( 'نخیر', textDirection: TextDirection.rtl,style: TextStyle(fontSize: 18),),
                ),
                width: 140,
                height: 45,
                decoration: BoxDecoration(
                    color: Color(0xffEC7D7D),
                    borderRadius: BorderRadius.circular(22)
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                c.changeIndexWithYes();
                print(c.birthday.value);
              },
              child: Container(
                child: Center(
                    child: Text('بلی', textDirection: TextDirection.rtl,style: TextStyle(fontSize: 18),
                    )),
                width: 140,
                height: 45,
                decoration: BoxDecoration(
                    color: Color(0xff80DC83),
                    borderRadius: BorderRadius.circular(22)
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}