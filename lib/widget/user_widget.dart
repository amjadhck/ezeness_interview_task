import 'package:flutter/material.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        itemBuilder: (ctx, index) {
          return Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xFFf28dbf), width: 2.0),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 5,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 3.0),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 7,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green, width: 4.0),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 7,
                    top: 6,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 5,
                    top: 5,
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 13,
                    top: 13,
                    child: SizedBox(
                      height: 35,
                      width: 35,
                      child: Image.network(
                        'https://previews.123rf.com/images/jemastock/jemastock1907/jemastock190761507/127256748-indian-young-boy-face-with-glasses-profile-picture-avatar-cartoon-character-portrait-in-black-and-wh.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Text('@_user$index')
            ],
          );
        },
        separatorBuilder: (c, i) {
          return const SizedBox(
            width: 10,
          );
        },
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
