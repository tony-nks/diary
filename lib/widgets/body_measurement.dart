import 'package:flutter/material.dart';

class BodyMeasurement extends StatefulWidget {
  const BodyMeasurement({Key? key}) : super(key: key);

  @override
  State<BodyMeasurement> createState() => _BodyMeasurementState();
}

class _BodyMeasurementState extends State<BodyMeasurement> {
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
          padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 28.0),
          child: Column(
            children: [
              // первая часть
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  //Weight чего-то
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Weight',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color.fromRGBO(55, 18, 100, 1),
                          fontFamily: "BalooChettan2",
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            '206.8',
                            style: TextStyle(
                              height: 1,
                              fontWeight: FontWeight.bold,
                              fontSize: 38,
                              color: Color.fromRGBO(55, 18, 100, 1),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'lbs',
                            style: TextStyle(
                              height: 2.1,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color.fromRGBO(55, 18, 100, 1),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.access_time,
                            size: 20,
                            color: Colors.blueGrey,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Today 8:26 AM',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.blueGrey,
                              fontFamily: "BalooChettan2",
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBox(width: 10),
                          Text(
                            'InBody SmartScale',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.blue,
                              fontFamily: "BalooChettan2",
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 5),
              const Divider(),
              const SizedBox(height: 15),
              // вторая часть нижняя
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '185 cm',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: "BalooChettan2",
                        ),
                      ),
                      Text(
                        'Height',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '27.3 BMI',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: "BalooChettan2",
                        ),
                      ),
                      Text(
                        'Overweight',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '20%',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: "BalooChettan2",
                        ),
                      ),
                      Text(
                        'Body fat',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.blueGrey,
                        ),
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
