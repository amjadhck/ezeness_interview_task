import 'package:flutter/material.dart';

class TitleBox extends StatelessWidget {
  final String title;
  final Color color;
  const TitleBox({
    required this.title,
    Key? key,required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 90,
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 19,
            child: Text(
              "U",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ),
          Positioned(
            top: 12,
            left: 32,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ),
          Positioned(
            top: 25,
            left: 19,
            child: Text(
              "U",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ),
          Positioned(
            top: 25,
            left: 32,
            child: Text(
              "p",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
