import 'dart:math';

import 'package:bmi_calculator/bmi_result_screen.dart';
import 'package:flutter/material.dart';
import 'bmi_calculator/bmi_result_screen.dart';
class BMI_Screen extends StatefulWidget {
  @override
  _BMI_ScreenState createState() => _BMI_ScreenState();
}

class _BMI_ScreenState extends State<BMI_Screen>
{
  bool isMale = true;
  double height = 150.0;
  int weight = 40;
  int age = 18;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 228, 228, 1.0),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "BMI Calculator",
        ),
      ),
      body: Column(
        children: [

          /*Male or Female Section*/
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.male,
                              size: 100.0,
                              color: Colors.white,
                            ),
                            const SizedBox(height: 15.0,),
                            Text(
                              "เพศชาย",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ]
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0,),
                          color: isMale? Colors.blue[300] : Color.fromARGB(
                              255, 189, 69, 69),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0,),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.female,
                              size: 100.0,
                              color: Colors.white,
                            ),
                            const SizedBox(height: 15.0,),
                            Text(
                              "เพศหญิง",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                          ]
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0,),
                          color: !isMale? Colors.pink[300]: Color.fromARGB(
                              255, 189, 69, 69),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          /*Height Section*/
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0,),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "สูง",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.red,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Text(
                            "${height.round()}",
                            style: const TextStyle(
                              color: Colors.red,
                              fontSize: 60.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const SizedBox(width: 5.0,),
                          const Text(
                            "CM",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        value: height,
                        min: 80.0,
                        max: 220.0,
                        onChanged:(value){
                          setState(() {
                            height = value;
                          });
                        },
                        activeColor: Color.fromRGBO(145, 48, 48, 1.0),
                        inactiveColor: Color.fromRGBO(203, 154, 0, 100),
                        thumbColor: Color.fromRGBO(145, 48, 48, 1.0),
                      ),
                    ]
                ),
              ),
            ),
          ),

          /*Weight and Age Section*/
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "น้ำหนัก",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.red,
                            ),
                          ),
                          Text(
                            "${weight}",
                            style: const TextStyle(
                              color: Colors.red,
                              fontSize: 60.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight--;
                                  });
                                },
                                heroTag: 'Weight-',
                                mini: true,
                                child: const Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                heroTag: 'Weight+',
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0,),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0,),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "อายุ",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.red,
                            ),
                          ),
                          Text(
                            "${age}",
                            style: const TextStyle(
                              color: Colors.red,
                              fontSize: 60.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                heroTag: 'age-',
                                mini: true,
                                child: const Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                heroTag: 'age+',
                                mini: true,
                                child: const Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0,),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ),

          /*Calculate Button Section*/
          Container (
            width: double.infinity,
            height: 75.0,
            color: Colors.red.shade800,
            child: MaterialButton(
              onPressed: (){
                String health = "";
                String images = "";
                String discrip = "";
                double result = weight / pow(height/100, 2);
                print(result.round());
                if(result<18.5){
                  health ="ตอนนี้ร่างกายคุณ ผอมเกินไป!";
                  images = 'assets/images/sad.png';
                  discrip = 'น้ำหนักน้อยกว่าปกติก็ไม่ค่อยดี หากคุณสูงมากแต่น้ำหนักน้อยเกินไป อาจเสี่ยงต่อการได้รับสารอาหารไม่เพียงพอหรือได้รับพลังงานไม่เพียงพอ ส่งผลให้ร่างกายอ่อนเพลียง่าย การรับประทานอาหารให้เพียงพอ และการออกกำลังกายเพื่อเสริมสร้างกล้ามเนื้อสามารถช่วยเพิ่มค่า BMI ให้อยู่ในเกณฑ์ปกติได้';
                }else if(result<24.9 && result>18.6){
                  health ="ตอนนี้ร่างกายคุณ ปกติ!";
                  images = 'assets/images/happy.png';
                  discrip = 'น้ำหนักที่เหมาะสมสำหรับคนไทยคือค่า BMI ระหว่าง 18.5-24 จัดอยู่ในเกณฑ์ปกติ ห่างไกลโรคที่เกิดจากความอ้วน และมีความเสี่ยงต่อการเกิดโรคต่าง ๆ น้อยที่สุด ควรพยายามรักษาระดับค่า BMI ให้อยู่ในระดับนี้ให้นานที่สุด และควรตรวจสุขภาพทุกปี';
                }
                else if(result<29.9 && result>25.0){
                  health ="ตอนนี้ร่างกายคุณ ท้วม!";
                  images = 'assets/images/t.png';
                  discrip = 'อ้วนในระดับหนึ่ง ถึงแม้จะไม่ถึงเกณฑ์ที่ถือว่าอ้วนมาก ๆ แต่ก็ยังมีความเสี่ยงต่อการเกิดโรคที่มากับความอ้วนได้เช่นกัน ทั้งโรคเบาหวาน และความดันโลหิตสูง ควรปรับพฤติกรรมการทานอาหาร ออกกำลังกาย และตรวจสุขภาพ';
                }else{
                  health ="อตอนนี้ร่างกายคุณ อ้วน!";
                  images = 'assets/images/sad.png';
                  discrip = 'ค่อนข้างอันตราย เสี่ยงต่อการเกิดโรคร้ายแรงที่แฝงมากับความอ้วน หากค่า BMI อยู่ในระดับนี้ จะต้องปรับพฤติกรรมการทานอาหาร และควรเริ่มออกกำลังกาย และหากเลขยิ่งสูงกว่า 40.0 ยิ่งแสดงถึงความอ้วนที่มากขึ้น ควรไปตรวจสุขภาพ และปรึกษาแพทย์';
                }

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BMIResultScreen(
                      result: result,
                      age: age,
                      isMale: isMale,
                      health: health,
                      images: images,
                      discrip: discrip,
                    ),
                  )
                );
              },
              child: const Text(
                "CALCULATE",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
