import 'package:flutter/material.dart';

class MealsToday extends StatelessWidget {
  const MealsToday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 230,
          width: 150,
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
                        Color.fromRGBO(250, 120, 130, 1),
                        Color.fromRGBO(253, 170, 148, 1),
                      ]
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(50),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
              ),
              Positioned(
                top: -50,
                left: -15,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromRGBO(255, 255, 255, 0.5),
                  ),
                ),
              ),
              Positioned(
                  top: 45,
                  left: 20,
                  child: Text(
                    'Breakfast',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: "BalooChettan2",
                        fontSize: 18
                    ),
                  )),
              Positioned(
                  top: 75,
                  left: 20,
                  child: Text(
                    'Bread,\nPeanut butter,\nApple',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "BalooChettan2",
                    ),
                  )),
              Positioned(
                  top: 155,
                  left: 20,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('525', style: TextStyle(color: Colors.white, fontFamily: "BalooChettan2", fontSize: 30),),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Text('kcal', style: TextStyle(color: Colors.white, fontFamily: "BalooChettan2"),),
                      ),
                    ],
                  )),
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
              borderRadius:  BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  spreadRadius: 5,
                  blurRadius: 25,
                )
              ]
            ),
          ),
        ),
        Positioned(
            left: 10,
            child: Image.asset("assets/images/Breakfast.png", scale: 8,)),
      ],
    );
  }
}
