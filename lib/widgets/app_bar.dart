import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: 28.0, vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'My Diary',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Color.fromRGBO(55, 18, 100, 1),
                fontFamily: "BalooChettan2"),
          ),
          Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                size: 16,
                color: Color.fromRGBO(55, 18, 100, 1),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.calendar_today_outlined,
                  size: 14,
                  color: Color.fromRGBO(55, 18, 100, 1)),
              SizedBox(
                width: 10,
              ),
              Text(
                '15 May',
                style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(55, 18, 100, 1),
                    fontFamily: "BalooChettan2",
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.arrow_forward_ios,
                  size: 16, color: Color.fromRGBO(55, 18, 100, 1)),
            ],
          ),
        ],
      ),
    );
  }
}
