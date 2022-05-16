import 'package:ezeness_interview_task/widget/category_sub.dart';
import 'package:ezeness_interview_task/widget/category_widget.dart';
import 'package:ezeness_interview_task/widget/diffrent_product.dart';
import 'package:ezeness_interview_task/widget/footer.dart';
import 'package:ezeness_interview_task/widget/headlines.dart';
import 'package:ezeness_interview_task/widget/main_image.dart';
import 'package:ezeness_interview_task/widget/product_title_widget.dart';
import 'package:ezeness_interview_task/widget/search_box.dart';
import 'package:ezeness_interview_task/widget/title_box.dart';
import 'package:ezeness_interview_task/widget/user_widget.dart';
import 'package:flutter/material.dart';

List imageList = [
  'https://cdn-prod.medicalnewstoday.com/content/images/articles/324/324494/gluten-free-pancakes-for-different-diets-topped-with-blueberries-and-nuts.jpg',
  'https://media.istockphoto.com/photos/dinner-table-full-of-food-picture-id1136956875?k=20&m=1136956875&s=612x612&w=0&h=RxWNKQSgpOrgdw0DeR_sH6KyPrxp9znVdBYzLn1Y7Hc=',
  'https://thumbs.dreamstime.com/b/heart-shape-various-vegetables-fruits-healthy-food-concept-isolated-white-background-140287808.jpg',
  'https://images.freeimages.com/images/small-previews/f3f/food-1171568.jpg',
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 10, bottom: 10),
                child: Row(
                  children: [
                    const TitleBox(
                      title: "Serve",
                      color: Colors.black,
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: const SearchBox(),
                    ),
                  ],
                ),
              ),
              const HeadlineWidget(),
              const ImageContainer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Banner Title',
                    ),
                    SizedBox(
                      height: 25,
                      width: 100,
                      child: ElevatedButton(
                        child: const Text('SHOP UP'),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.table_chart_sharp,
                    ),
                    Spacer(),
                    Icon(
                      Icons.storage,
                    ),
                    Icon(
                      Icons.read_more_sharp,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12, bottom: 8),
                child: CategoryWidget(),
              ),
              DeffrentProducts(
                imageTitle:
                    imageList[0],
                itemCount: 12,
                title: "#FOR U",
              ),
              DeffrentProducts(
                imageTitle: imageList[1],
                itemCount: 12,
                title: "#EXCLUSIVE",
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 40,
                color: Colors.grey[300],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '#24/7 STORES',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text('View All')
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: UserWidget(),
              ),
              DeffrentProducts(
                imageTitle: imageList[2],
                itemCount: 12,
                title: "#MOST CHAIN UP",
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 40,
                color: Colors.grey[300],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '#SHOP BY CATEGORY',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text('View All')
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Row(
                  children: const [
                    CategorySub(),
                    CategorySub(),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const ProductTitleWidget(
                itemCount: 3,
              ),
              DeffrentProducts(
                imageTitle: imageList[3],
                itemCount: 12,
                title: "#LATEST POSTS",
              ),
              const SizedBox(
                height: 20,
              ),
              const MobileFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
