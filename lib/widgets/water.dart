import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class WaterWidget extends StatefulWidget {
  const WaterWidget({Key? key}) : super(key: key);

  @override
  State<WaterWidget> createState() => _WaterWidgetState();
}

class _WaterWidgetState extends State<WaterWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28.0, right: 28.0),
      child: Container(
        decoration: const BoxDecoration(
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
          padding: const EdgeInsets.only(left: 28.0, right: 28.0, top: 28.0, bottom: 15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //статистика воды
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //часть первая
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text('2100',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 38,
                              color: Color.fromRGBO(55, 18, 100, 1),
                            ),
                          ),
                          SizedBox(width: 5),
                          Text('ml',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color.fromRGBO(55, 18, 100, 1),

                            ),
                          )
                        ],
                      ),
                      const Text('of daily goal 3.5L',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),

                  // разделитель
                  const Divider(),

                  //часть вторая
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 15),
                      Row(
                        children: const [
                          Icon(Icons.access_time, size: 20, color: Colors.blueGrey,),
                          SizedBox(width: 5),
                          Text('Last drink 8:26 AM',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              color: Colors.blueGrey,
                              fontFamily: "BalooChettan2",
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: const [
                          Icon(Icons.notifications_active, size: 20, color: Colors.blueGrey,),
                          SizedBox(width: 5),
                          Text('Your bottle is empty, refill it!',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              color: Colors.blueGrey,
                              fontFamily: "BalooChettan2",
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              //плюсик и минус
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  height: 140,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius: 5,
                              offset: Offset(1,2)
                            )
                          ]
                        ),
                        child: const Icon(Icons.add, color: Colors.blueAccent, size: 15,),
                      ),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius: 5,
                              offset: Offset(1,2)
                            )
                          ]
                        ),
                        child: const Icon(Icons.remove, color: Colors.blueAccent, size: 15,),
                      )
                    ],
                  ),
                ),
              ),

              // капсула с водой
              SizedBox(
                width: 60,
                height: 135.0,
                //padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: LiquidLinearProgressIndicator(
                  value: 0.6,
                  direction: Axis.vertical,
                  backgroundColor: const Color.fromRGBO(0, 20, 200, 0.1),
                  valueColor: const AlwaysStoppedAnimation(Colors.blue),
                  borderRadius: 35.0,
                  borderColor: Colors.white,
                  borderWidth: 1.0,
                  center: const Text(
                    "60%",
                    style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
