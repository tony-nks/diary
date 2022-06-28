import 'package:flutter/material.dart';

class WaterNotification extends StatefulWidget {
  const WaterNotification({Key? key}) : super(key: key);

  @override
  State<WaterNotification> createState() => _WaterNotificationState();
}

class _WaterNotificationState extends State<WaterNotification> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Stack(
        children: [
          Container(
            height: 100,
          ),
          Positioned(
            top: 20,
            child: Container(
              width: 335,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lightBlueAccent),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: const [
                    SizedBox(width: 70),
                    Text(
                      'Text text text text\nText',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          fontFamily: "BalooChettan2",
                          color: Colors.blueAccent),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              left: 10,
              child: Image.asset(
                'assets/images/Water.png',
                scale: 8,
              ))
        ],
      ),
    );
  }
}
