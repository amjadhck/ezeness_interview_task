import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Image.network(
            "https://media.istockphoto.com/photos/selection-of-american-food-picture-id931308812?k=20&m=931308812&s=612x612&w=0&h=Tudia4RSCvfpWZhli0ehScrzeCtbwvTqB9BZaCta_qA=",
            height: 180,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: 30,
              color: Colors.white24,
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text('AED 300/-'),
                    ),
                    const Spacer(),
                    const Text(
                      'AED 500/-',
                      style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(8)),
                      alignment: Alignment.center,
                      height: 25,
                      width: 50,
                      child: const Text(
                        '50% off',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
