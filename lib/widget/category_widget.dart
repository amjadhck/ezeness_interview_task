import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        itemBuilder: (ctx, index) {
          return Stack(
            children: [
              Container(
                height: 200,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
              ),
              Positioned(
                  left: 10,
                  top: 2,
                  child: Container(
                    height: 66,
                    width: 60,
                    decoration: BoxDecoration(
                        color: Colors.grey[300], shape: BoxShape.circle),
                  )),
              Positioned(
                left: 10,
                top: 2,
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    //color: Colors.amber,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(index == 0
                          ? "https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aGVhbHRoeSUyMGZvb2R8ZW58MHx8MHx8&w=1000&q=80"
                          : "https://restaurantden.com/wp-content/uploads/2017/09/free-stock-food-photography-websites.jpg"),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 5,
                left: 8,
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      index == 0 ? const Text("U ...Up") : const Text("Main"),
                      index == 0
                          ? const Text("Special")
                          : Text("Cetegory ${index + 1}"),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
        separatorBuilder: (c, i) {
          return const SizedBox(
            width: 4,
          );
        },
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
