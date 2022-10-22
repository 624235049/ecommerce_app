import 'package:ecommerce_app/utils/dimensions.dart';
import 'package:ecommerce_app/utils/theme.dart';
import 'package:ecommerce_app/widgets/big_text.dart';
import 'package:ecommerce_app/widgets/icon_and_text_widget.dart';
import 'package:ecommerce_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),

        //ส่วนของ rate Star Food
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) {
                  return Icon(
                    Icons.star,
                    color: AppTheme.mainColor,
                    size: 15,
                  );
                },
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "4.5"),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "1289"),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "ความคิดเห็น"),
          ],
        ),
        SizedBox(
          height: Dimensions.height20,
        ),

        // ส่วนของ Icon สถานะ Location Icon และระยะห่างเวลากิโลเมตร
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //IconAndText call มาจาก widget => icon_and_text.dart require icon ,text, iconcolor
            IconAndTextWidget(
                icon: Icons.circle_sharp,
                text: "Normal",
                iconColor: AppTheme.iconColor1),
            IconAndTextWidget(
                icon: Icons.location_on,
                text: "1.7km",
                iconColor: AppTheme.mainColor),
            IconAndTextWidget(
                icon: Icons.access_time_rounded,
                text: "32min",
                iconColor: AppTheme.iconColor2),
          ],
        ),
      ],
    );
  }
}
