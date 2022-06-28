

import 'package:flutter/material.dart';

class MealsToday extends StatelessWidget {
  final bool full;
  final String image;
  final String title;
  final String kcal;
  final Color startColor;
  final Color endColor;

  const MealsToday(
      {Key? key,
      required this.image,
      required this.title,
      required this.kcal,
      required this.startColor,
      required this.endColor,
      required this.full})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Stack(
        children: [
          const SizedBox(
            height: 230,
            width: 130,
          ),
          Positioned(
            top: 30,
            child: Stack(
              children: [
                Container(
                  height: 200,
                  width: 130,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            startColor,
                            endColor,
                          ]),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),

                  ),
                ),
                Positioned(
                  top: -50,
                  left: -15,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color.fromRGBO(255, 255, 255, 0.5),
                    ),
                  ),
                ),
                Positioned(
                    top: 45,
                    left: 20,
                    child: Text(
                      title,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "BalooChettan2",
                          fontSize: 18),
                    )),
                const Positioned(
                    top: 75,
                    left: 20,
                    child: Text(
                      'Bread,\nPeanut butter,\nApple',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "BalooChettan2",
                      ),
                    )),
                full
                    ? Positioned(
                        top: 155,
                        left: 20,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              kcal,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: "BalooChettan2",
                                  fontSize: 30),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(7.0),
                              child: Text(
                                'kcal',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "BalooChettan2"),
                              ),
                            ),
                          ],
                        ))
                    : Positioned(
                        top: 140,
                        left: 30,
                        child: Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white60,
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black87,
                                    offset: Offset(3, 5),
                                    spreadRadius: -2,
                                    blurRadius: 15,
                                  )
                                ]),
                            child: const Icon(Icons.add)))
              ],
            ),
          ),
          Positioned(
            top: 35,
            left: 35,
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 5,
                      blurRadius: 25,
                    )
                  ]),
            ),
          ),
          Positioned(
              left: 10,
              child: Image.asset(
                image,
                scale: 8,
              )),
        ],
      ),
    );
  }
}
