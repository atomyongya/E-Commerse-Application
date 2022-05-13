import "package:flutter/material.dart";
import 'package:frontend/colors.dart';
import 'package:frontend/widgets/icon_and_text_widget.dart';
import 'package:frontend/widgets/small_text.dart';
import "../widgets/big_text.dart";

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBody();
}

class _FoodPageBody extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);

  var _currPageValue = 0.0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    return pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: 320,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: (context, position) {
          return _buildPageItem(position);
        },
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            // color: index.isEven ? Colors.blue : Colors.purple,
            borderRadius: BorderRadius.circular(30),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/food1.jpg"),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: const EdgeInsets.only(left: 30, right: 30, bottom: 30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: "Chinese momo"),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                            5,
                            (index) => Icon(Icons.star,
                                color: AppColors.mainColor, size: 18)),
                      ),
                      const SizedBox(width: 10),
                      SmallText(text: "4.5"),
                      const SizedBox(width: 10),
                      SmallText(text: "1287"),
                      const SizedBox(width: 10),
                      SmallText(text: "comments"),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(children: [
                    IconAndTextWidget(
                      icon: Icons.circle,
                      text: "Normal",
                      iconColor: AppColors.iconColor1,
                    ),
                    const SizedBox(width: 10),
                    IconAndTextWidget(
                      icon: Icons.location_on,
                      text: "1.7km",
                      iconColor: AppColors.mainColor,
                    ),
                    const SizedBox(width: 10),
                    IconAndTextWidget(
                      icon: Icons.access_time_rounded,
                      text: "32min",
                      iconColor: AppColors.iconColor2,
                    ),
                  ])
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
