import 'package:ecommerce_app/src/utils/dimensions.dart';
import 'package:ecommerce_app/src/utils/theme.dart';
import 'package:ecommerce_app/src/widgets/app_icon.dart';
import 'package:ecommerce_app/src/widgets/big_text.dart';
import 'package:ecommerce_app/src/widgets/exandable_text_widget.dart';
import 'package:flutter/material.dart';

class RecommenededFoodDetail extends StatelessWidget {
  const RecommenededFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                    child: BigText(
                  text: "Thai Side",
                  size: Dimensions.font26,
                )),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppTheme.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food2.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(
                      text:
                          "ร้านเสน่ห์จันทน์ ร้านอาหารไทยรสชาติต้นตำรับ พร้อมเสิร์ฟเมนูอาหารไทยโบราณแบบชาววังแท้ๆ โดดเด่นด้วยรสชาติจากฝีมือเชฟ นอกจากรสชาติจะอร่อยถูกใจคนรักอาหารไทยแล้ว หน้าตาแต่ละเมนูก็สวยเลิศมากๆ เพราะทางร้านค่อนข้างประณีตเลยกว่าจะเสิรฺฟแต่ละเมนู โดยทางร้านก็มีทั้งเมนูคาวและหวานให้เลือกหลากหลายค่ะ เช่น แกงระแวงเนื้อ แกงจีนจ๊วน ต้มยำกุ้ง ข้าวขวัญ ตำรับสายเยาวภา และข้าวเม่าทอดไส้กล้วยค่ะ ทุกเมนูจัดเสิร์ฟในบรรยากาศร้านไทยร่วมสมัย ร้านนี้มีสาขาทั้งหมด 4 สาขาในกรุงเทพ แต่วันนี้เราจะพาไปชมที่สาขา Asiatique ค่ะ ขอบอกเลยว่าบรรยากาศดีมากกกกก เพราะทางร้านมีบริการแบบนั่งทานที่ร้าน และแบบล่องเรือทานอาหารไทยแท้ๆ ชมวิวแม่น้ำเจ้าพระยาสองฝั่ง เมนูทางร้านเป็นเมนูอาหารไทยที่มีให้เลือกแบบหลากหลายแถมยังมีแบบเป็น set อีกด้วยนะคะ เช่น Gold set dinner Platinum set dinner และนอกจากนี้ก็ยังเมนูอื่นๆ เช่น ฉู่ฉี่ปลาบุรี ปลาบุรีทอดสมุนไพร ปลาบุรีนึ่งซีอิ้วร้านเสน่ห์จันทน์ ร้านอาหารไทยรสชาติต้นตำรับ พร้อมเสิร์ฟเมนูอาหารไทยโบราณแบบชาววังแท้ๆ โดดเด่นด้วยรสชาติจากฝีมือเชฟ นอกจากรสชาติจะอร่อยถูกใจคนรักอาหารไทยแล้ว หน้าตาแต่ละเมนูก็สวยเลิศมากๆ เพราะทางร้านค่อนข้างประณีตเลยกว่าจะเสิรฺฟแต่ละเมนู โดยทางร้านก็มีทั้งเมนูคาวและหวานให้เลือกหลากหลายค่ะ เช่น แกงระแวงเนื้อ แกงจีนจ๊วน ต้มยำกุ้ง ข้าวขวัญ ตำรับสายเยาวภา และข้าวเม่าทอดไส้กล้วยค่ะ ทุกเมนูจัดเสิร์ฟในบรรยากาศร้านไทยร่วมสมัย ร้านนี้มีสาขาทั้งหมด 4 สาขาในกรุงเทพ แต่วันนี้เราจะพาไปชมที่สาขา Asiatique ค่ะ ขอบอกเลยว่าบรรยากาศดีมากกกกก เพราะทางร้านมีบริการแบบนั่งทานที่ร้าน และแบบล่องเรือทานอาหารไทยแท้ๆ ชมวิวแม่น้ำเจ้าพระยาสองฝั่ง เมนูทางร้านเป็นเมนูอาหารไทยที่มีให้เลือกแบบหลากหลายแถมยังมีแบบเป็น set อีกด้วยนะคะ เช่น Gold set dinner Platinum set dinner และนอกจากนี้ก็ยังเมนูอื่นๆ เช่น ฉู่ฉี่ปลาบุรี ปลาบุรีทอดสมุนไพร ปลาบุรีนึ่งซีอิ้วร้านเสน่ห์จันทน์ ร้านอาหารไทยรสชาติต้นตำรับ พร้อมเสิร์ฟเมนูอาหารไทยโบราณแบบชาววังแท้ๆ โดดเด่นด้วยรสชาติจากฝีมือเชฟ นอกจากรสชาติจะอร่อยถูกใจคนรักอาหารไทยแล้ว หน้าตาแต่ละเมนูก็สวยเลิศมากๆ เพราะทางร้านค่อนข้างประณีตเลยกว่าจะเสิรฺฟแต่ละเมนู โดยทางร้านก็มีทั้งเมนูคาวและหวานให้เลือกหลากหลายค่ะ เช่น แกงระแวงเนื้อ แกงจีนจ๊วน ต้มยำกุ้ง ข้าวขวัญ ตำรับสายเยาวภา และข้าวเม่าทอดไส้กล้วยค่ะ ทุกเมนูจัดเสิร์ฟในบรรยากาศร้านไทยร่วมสมัย ร้านนี้มีสาขาทั้งหมด 4 สาขาในกรุงเทพ แต่วันนี้เราจะพาไปชมที่สาขา Asiatique ค่ะ ขอบอกเลยว่าบรรยากาศดีมากกกกก เพราะทางร้านมีบริการแบบนั่งทานที่ร้าน และแบบล่องเรือทานอาหารไทยแท้ๆ ชมวิวแม่น้ำเจ้าพระยาสองฝั่ง เมนูทางร้านเป็นเมนูอาหารไทยที่มีให้เลือกแบบหลากหลายแถมยังมีแบบเป็น set อีกด้วยนะคะ เช่น Gold set dinner Platinum set dinner และนอกจากนี้ก็ยังเมนูอื่นๆ เช่น ฉู่ฉี่ปลาบุรี ปลาบุรีทอดสมุนไพร ปลาบุรีนึ่งซีอิ้วร้านเสน่ห์จันทน์ ร้านอาหารไทยรสชาติต้นตำรับ พร้อมเสิร์ฟเมนูอาหารไทยโบราณแบบชาววังแท้ๆ โดดเด่นด้วยรสชาติจากฝีมือเชฟ นอกจากรสชาติจะอร่อยถูกใจคนรักอาหารไทยแล้ว หน้าตาแต่ละเมนูก็สวยเลิศมากๆ เพราะทางร้านค่อนข้างประณีตเลยกว่าจะเสิรฺฟแต่ละเมนู โดยทางร้านก็มีทั้งเมนูคาวและหวานให้เลือกหลากหลายค่ะ เช่น แกงระแวงเนื้อ แกงจีนจ๊วน ต้มยำกุ้ง ข้าวขวัญ ตำรับสายเยาวภา และข้าวเม่าทอดไส้กล้วยค่ะ ทุกเมนูจัดเสิร์ฟในบรรยากาศร้านไทยร่วมสมัย ร้านนี้มีสาขาทั้งหมด 4 สาขาในกรุงเทพ แต่วันนี้เราจะพาไปชมที่สาขา Asiatique ค่ะ ขอบอกเลยว่าบรรยากาศดีมากกกกก เพราะทางร้านมีบริการแบบนั่งทานที่ร้าน และแบบล่องเรือทานอาหารไทยแท้ๆ ชมวิวแม่น้ำเจ้าพระยาสองฝั่ง เมนูทางร้านเป็นเมนูอาหารไทยที่มีให้เลือกแบบหลากหลายแถมยังมีแบบเป็น set อีกด้วยนะคะ เช่น Gold set dinner Platinum set dinner และนอกจากนี้ก็ยังเมนูอื่นๆ เช่น ฉู่ฉี่ปลาบุรี ปลาบุรีทอดสมุนไพร ปลาบุรีนึ่งซีอิ้ว"),
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
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
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppTheme.mainColor,
                    icon: Icons.remove),
                BigText(
                  text: "\$1288 " + "x" + " 0 ",
                  color: AppTheme.mainBlockColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppTheme.mainColor,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: AppTheme.mainColor,
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
        ],
      ),
    );
  }
}
