import 'package:flutter/material.dart';

class HeadlineWidget extends StatelessWidget {
  const HeadlineWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: () {},
          child: const Text(
            "POST UP",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "SHOP UP",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "BOOK UP",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "CALL UP",
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
