import 'package:flutter/material.dart';

class TextDivider extends StatelessWidget {

  final String title;
  final String link;
  final IconData iconData;
  const TextDivider({Key? key, required this.title, required this.link, required this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 5.0, vertical: 10),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color.fromRGBO(55, 18, 100, 1),
                fontFamily: "BalooChettan2",
              ),
            ),
          ),
          Row(
            children: [
              Text(
                link,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.blue,
                  fontFamily: "BalooChettan2",
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Icon(iconData,
                  size: 16, color: Colors.blueGrey),
              const SizedBox(
                width: 30,
              )
            ],
          ),
        ],
      ),
    );
  }
}
