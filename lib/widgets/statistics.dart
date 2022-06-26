import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class Statistics extends StatefulWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {

  late ValueNotifier<double> valueNotifier;
  final double newValue = 50;


  @override
  void initState() {
    super.initState();
    valueNotifier = ValueNotifier(0.0);
  }

  @override
  Widget build(BuildContext context) {
    valueNotifier.value = newValue;
    return Padding(
      padding: const EdgeInsets.only(left: 28.0, right: 28.0),
      child: Container(
        height: 250,
        width: 330,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(50),
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(3, 5),
                spreadRadius: -5,
                blurRadius: 5,
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 28.0),
          child: Column(
            children: [
              // первая часть
              Row(
                children: [
                  //две фигни слева, колории вроде
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //первая фигня
                      Row(
                        children: [
                          Container(
                            width: 2,
                            height: 40,
                            color: Colors.blue[100],
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Eaten',style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, fontFamily: "BalooChettan2", color: Colors.grey[400]),),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Image.asset('assets/icons/eaten.png'),
                                  SizedBox(width: 10),
                                  Text('1127', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, fontFamily: "BalooChettan2", color: Color.fromRGBO(55, 18, 100,  1)),),
                                  SizedBox(width: 10),
                                  Text('kcal', style: TextStyle(color: Colors.grey[400], fontFamily: "BalooChettan2"),)
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      //вторая фигня
                      Row(
                        children: [
                          Container(
                            width: 2,
                            height: 40,
                            color: Colors.blue[100],
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Eaten',style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, fontFamily: "BalooChettan2", color: Colors.grey[400]),),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Image.asset('assets/icons/burned.png'),
                                  SizedBox(width: 10),
                                  Text('102', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, fontFamily: "BalooChettan2", color: Color.fromRGBO(55, 18, 100,  1)),),
                                  SizedBox(width: 10),
                                  Text('kcal', style: TextStyle(color: Colors.grey[400], fontFamily: "BalooChettan2"),)
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 55),
                  //кружочек справа
                  const SimpleCircularProgressBar(
                    progressStrokeWidth: 15,
                    backStrokeWidth: 5,

                    maxValue: 100,
                  )
                ],
              ),
              Divider(),
              // вторая часть нижняя
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 6,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 50,
                            width: 70,
                          ),
                          Text('Carbs', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, fontFamily: "BalooChettan2", color: Color.fromRGBO(1, 50, 150,  1)),),
                          Positioned(
                            top: 19,
                            left: -10,
                            child: LinearPercentIndicator(
                              width: 75.0,
                              lineHeight: 7.0,
                              percent: 0.8,
                              backgroundColor: Colors.grey[100],
                              linearGradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: <Color>[
                                  Colors.blue,
                                  Colors.white,
                                ], // Gradient from https://learnui.design/tools/gradient-generator.html
                                tileMode: TileMode.mirror,
                              ),
                              barRadius: Radius.circular(25),
                            ),
                          ),
                          Positioned(
                              top: 30,
                              child: Text('12g left', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11, fontFamily: "BalooChettan2", color: Colors.grey),))
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 6,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 50,
                            width: 70,
                          ),
                          Text('Carbs', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, fontFamily: "BalooChettan2", color: Color.fromRGBO(1, 50, 150,  1)),),
                          Positioned(
                            top: 19,
                            left: -10,
                            child: LinearPercentIndicator(
                              width: 75.0,
                              lineHeight: 7.0,
                              percent: 0.6,
                              backgroundColor: Colors.grey[100],
                              linearGradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: <Color>[
                                  Colors.red.shade100,
                                  Colors.red,
                                ], // Gradient from https://learnui.design/tools/gradient-generator.html
                                tileMode: TileMode.mirror,
                              ),
                              barRadius: Radius.circular(25),
                            ),
                          ),
                          Positioned(
                              top: 30,
                              child: Text('12g left', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11, fontFamily: "BalooChettan2", color: Colors.grey),))
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 6,
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 50,
                            width: 70,
                          ),
                          Text('Carbs', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, fontFamily: "BalooChettan2", color: Color.fromRGBO(1, 50, 150,  1)),),
                          Positioned(
                            top: 19,
                            left: -10,
                            child: LinearPercentIndicator(
                              width: 75.0,
                              lineHeight: 7.0,
                              percent: 0.4,
                              backgroundColor: Colors.grey[100],
                              linearGradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: <Color>[
                                  Colors.lightGreenAccent,
                                  Colors.green,
                                ], // Gradient from https://learnui.design/tools/gradient-generator.html
                                tileMode: TileMode.mirror,
                              ),
                              barRadius: Radius.circular(25),
                            ),
                          ),
                          Positioned(
                              top: 30,
                              child: Text('12g left', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 11, fontFamily: "BalooChettan2", color: Colors.grey),))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
