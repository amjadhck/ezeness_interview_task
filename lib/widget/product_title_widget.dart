import 'package:flutter/material.dart';

class ProductTitleWidget extends StatelessWidget {
  final int itemCount;
  const ProductTitleWidget({Key? key, required this.itemCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (ctx, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 150,
                  width: 130,
                  child: Stack(
                    children: [
                      Image.network(
                        'https://i.pinimg.com/236x/87/b0/26/87b026163aadb4b17f6d8bbffa73d553--men-fashion-high-fashion.jpg',
                        height: 150,
                        width: 130,
                        fit: BoxFit.cover,
                      ),
                      const Positioned(
                          top: 0,
                          right: 0,
                          child: Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.white,
                          )),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: SizedBox(
                          width: 130,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    size: 18,
                                    color: Colors.orange,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 18,
                                    color: Colors.orange,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 18,
                                    color: Colors.orange,
                                  ),
                                ],
                              ),
                              Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.all(2),
                                height: 26,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.black26,
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Text(
                                  '3 km',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '00.00/-',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Product Service',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Title Product',
                  style: TextStyle(fontWeight: FontWeight.w600),
                )
              ],
            );
          },
          separatorBuilder: (c, i) {
            return const SizedBox(
              width: 10,
            );
          },
          itemCount: itemCount),
    );
  }
}
