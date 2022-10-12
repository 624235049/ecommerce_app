import 'package:ecommerce_app/src/utils/dimensions.dart';
import 'package:ecommerce_app/src/utils/theme.dart';
import 'package:ecommerce_app/src/widgets/app_column.dart';
import 'package:ecommerce_app/src/widgets/app_icon.dart';
import 'package:ecommerce_app/src/widgets/big_text.dart';
import 'package:ecommerce_app/src/widgets/exandable_text_widget.dart';
import 'package:flutter/material.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/food2.jpg"),
                ),
              ),
            ),
          ),
          // icon widgets
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          // introduction of food
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize - 20,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: "ชุดเซ็ท : อาหารไทย"),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  BigText(text: "รายละเอียด"),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                          text:
                              "ร้านเสน่ห์จันทน์ ร้านอาหารไทยรสชาติต้นตำรับ พร้อมเสิร์ฟเมนูอาหารไทยโบราณแบบชาววังแท้ๆ โดดเด่นด้วยรสชาติจากฝีมือเชฟ นอกจากรสชาติจะอร่อยถูกใจคนรักอาหารไทยแล้ว หน้าตาแต่ละเมนูก็สวยเลิศมากๆ เพราะทางร้านค่อนข้างประณีตเลยกว่าจะเสิรฺฟแต่ละเมนู โดยทางร้านก็มีทั้งเมนูคาวและหวานให้เลือกหลากหลายค่ะ เช่น แกงระแวงเนื้อ แกงจีนจ๊วน ต้มยำกุ้ง ข้าวขวัญ ตำรับสายเยาวภา และข้าวเม่าทอดไส้กล้วยค่ะ ทุกเมนูจัดเสิร์ฟในบรรยากาศร้านไทยร่วมสมัย ร้านนี้มีสาขาทั้งหมด 4 สาขาในกรุงเทพ แต่วันนี้เราจะพาไปชมที่สาขา Asiatique ค่ะ ขอบอกเลยว่าบรรยากาศดีมากกกกก เพราะทางร้านมีบริการแบบนั่งทานที่ร้าน และแบบล่องเรือทานอาหารไทยแท้ๆ ชมวิวแม่น้ำเจ้าพระยาสองฝั่ง เมนูทางร้านเป็นเมนูอาหารไทยที่มีให้เลือกแบบหลากหลายแถมยังมีแบบเป็น set อีกด้วยนะคะ เช่น Gold set dinner Platinum set dinner และนอกจากนี้ก็ยังเมนูอื่นๆ เช่น ฉู่ฉี่ปลาบุรี ปลาบุรีทอดสมุนไพร ปลาบุรีนึ่งซีอิ้ว"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //expandable text widget
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
            top: Dimensions.height30,
            bottom: Dimensions.height30,
            left: Dimensions.width20,
            right: Dimensions.width20),
        decoration: BoxDecoration(
          color: AppTheme.buttonBackgroundColor,
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
                top: Dimensions.height20,
                bottom: Dimensions.height20,
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppTheme.signColor,
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  BigText(text: "0"),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  Icon(
                    Icons.add,
                    color: AppTheme.signColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height20,
                bottom: Dimensions.height20,
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              child: BigText(
                text: "\$10 | Add to cart",
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppTheme.mainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
