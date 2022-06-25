import 'package:flutter/material.dart';

class MealsToday extends StatelessWidget {
  const MealsToday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(50),
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        )
      ),
    );
  }
}
