
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_projects/guess_birthday/controller.dart';
//import 'package:getx_projects/item_counter/get_controller.dart';


const double border = 27;
const double circleSize = 50;
const  numberBorder = BorderSide(color: Color(0xff707070), width: 1);

const circleBorder =  Border(
  top: numberBorder,
  left: numberBorder,
  bottom:numberBorder,
  right: numberBorder,
);

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
      default: return SizedBox(
        child: Text('Your date is ${c.birthday.value}'),
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
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Obx( ()=> showSet(c.index.value)),
      ),
    );
  }
}

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
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
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
