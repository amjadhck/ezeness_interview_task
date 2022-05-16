import 'package:ezeness_interview_task/screens/home_screen.dart';
import 'package:ezeness_interview_task/widget/product_widget.dart';
import 'package:flutter/material.dart';

class DeffrentProducts extends StatelessWidget {
  final String title;
  final int itemCount;
  final String imageTitle;
  const DeffrentProducts({
    Key? key,
    required this.title,
    required this.itemCount,
    required this.imageTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 40,
          color: Colors.grey[300],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text('View All')
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: ProductWidget(
            image: imageTitle,
            itemCount: itemCount,
          ),
        ),
      ],
    );
  }
}