import "package:flutter/material.dart";
import 'package:frontend/utils/colors.dart';
import 'package:frontend/utils/dimensions.dart';
import 'package:frontend/widgets/app_icon.dart';
import 'package:frontend/widgets/big_text.dart';
import 'package:frontend/widgets/expanded_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        // sliver widget are the espical type of widget which have special effect.
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            backgroundColor: AppColors.yellowColor,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                const AppIcon(icon: Icons.clear),
                const AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                child: Center(
                  child: BigText(size: Dimensions.font26, text: "Chinese momo"),
                ),
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                ),
              ),
            ),
            expandedHeight: 300.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/food1.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                  child: const ExpandableTextWidget(
                    text:
                        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum"
                        "numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium"
                        "optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis"
                        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia"
                        "molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum"
                        "numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium"
                        "optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis"
                        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia"
                        "molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum"
                        "numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium"
                        "optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis"
                        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia"
                        "molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum"
                        "numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium"
                        "optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis"
                        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia"
                        "molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum"
                        "numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium"
                        "optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis"
                        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum"
                        "numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium"
                        "optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis"
                        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia"
                        "molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum"
                        "numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium"
                        "optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis"
                        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia"
                        "molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum"
                        "numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium"
                        "optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis"
                        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia"
                        "molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum"
                        "numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium"
                        "optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis"
                        "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia"
                        "molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum"
                        "numquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium"
                        "optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.icon24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                BigText(
                    text: "\$12.88 " + " X " + "0",
                    color: AppColors.mainBlackColor,
                    size: Dimensions.font26),
                AppIcon(
                    iconSize: Dimensions.icon24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height30,
                bottom: Dimensions.height30),
            decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      bottom: Dimensions.height20,
                      top: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white,
                  ),
                  child: Icon(Icons.favorite, color: AppColors.mainColor),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  child: BigText(
                    text: "\$10 | Add To Chart",
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
