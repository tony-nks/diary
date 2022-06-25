import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class Statistics extends StatefulWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 330,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(50),
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          )),
      child: Padding(
        padding: const EdgeInsets.all(28.0),
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
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Carbs'),

                    Text('12g left')
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
