import 'package:ecommerce_app/src/pages/food_page_body.dart';
import 'package:ecommerce_app/src/utils/dimensions.dart';
import 'package:ecommerce_app/src/utils/theme.dart';

import 'package:ecommerce_app/src/widgets/big_text.dart';
import 'package:ecommerce_app/src/widgets/small_text.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
  const MainFoodPage({Key? key}) : super(key: key);
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    print("current height is " + MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Column(
        children: [
          _buildhead(), //ส่วนHead ของ หน้า Mainfood return Widget
          FoodPageBody(), //เรียก Widget Page_view หน้า food_page_body
        ],
      ),
    );
  }

  Widget _buildhead() {
    return Container(
      child: Container(
        margin: EdgeInsets.only(
            top: Dimensions.height45, bottom: Dimensions.height15),
        padding: EdgeInsets.only(
            left: Dimensions.width20, right: Dimensions.width20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                BigText(
                  text: "Thailand",
                  color: AppTheme.mainColor,
                ),
                Row(
                  children: [
                    SmallText(
                      text: "Hatyai",
                      color: Colors.black54,
                    ),
                    Icon(
                      Icons.arrow_drop_down_rounded,
                    )
                  ],
                ),
              ],
            ),
            Center(
              child: Container(
                width: Dimensions.height45,
                height: Dimensions.height45,
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: Dimensions.iconSize24,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius15),
                    color: AppTheme.mainColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
