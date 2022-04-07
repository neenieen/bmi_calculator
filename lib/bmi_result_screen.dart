
import 'package:flutter/material.dart';
import 'bmi_screen.dart';

class BMIResultScreen extends StatelessWidget
{
  final bool isMale;
  final double result;
  final int age;
  final String health;
  final String images;
  final String discrip;
  BMIResultScreen({required this.result, required this.age, required this.isMale,required this.health,required this.images,required this.discrip});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(252, 179, 251, 1.0),



      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white38,Colors.white],
          )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('$images',height: 250.0,),


              Text(
                "ค่าดัชนีมวลกายของคุณ คือ ${result.round()}",
                style: const TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                ),
              ),

              Text(
                "$health",
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(184, 0, 95, 1),
                ) ,
              ),
              Text(
                "คุณเป็น ${isMale? 'เพศชาย':'เพศหญิง'}",
                style: const TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                "อายุ $age",
                style: const TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Expanded(
                  child: Container(
                    alignment: Alignment(10,10),
                    child: Text("$discrip",
                      style: const TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),

                  ),
                ),
              ),
              ElevatedButton.icon(onPressed: (){Navigator.push(context,
                MaterialPageRoute(builder: (context) => BMI_Screen()));},
                icon: Icon(Icons.replay_outlined),
                label: Text('คำนวนอีกครั้ง'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
