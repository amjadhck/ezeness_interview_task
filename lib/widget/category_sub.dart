import 'package:flutter/material.dart';

class CategorySub extends StatelessWidget {
  const CategorySub({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 50,
          width: 160,
          decoration: BoxDecoration(
              color: Colors.grey[300], borderRadius: BorderRadius.circular(50)),
        ),
        Positioned(
          left: 4,
          top: 0,
          child: Container(
              height: 50,
              width: 160,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(50)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [Text('Sub Category')],
              )),
        ),
      ],
    );
  }
}
