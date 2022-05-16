import 'package:ezeness_interview_task/widget/title_box.dart';
import 'package:flutter/material.dart';

TextStyle textStyle = TextStyle(color: Colors.grey);

class MobileFooter extends StatelessWidget {
  const MobileFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      width: double.infinity,
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "TERM OF USE",
                style: textStyle,
              ),
              Text(
                "CONTACT",
                style: textStyle,
              ),
              Text(
                "CAREER",
                style: textStyle,
              ),
              Text(
                "AREA RANGE",
                style: textStyle,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TitleBox(title: "Drive", color: Colors.grey),
              Row(
                children: [
                  Text(
                    "PROJECT BY ",
                    style: textStyle,
                  ),
                  Text(
                    "EZENESS TECHNOLOGY",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
