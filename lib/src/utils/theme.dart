import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme();

  static final Color iconColor1 = const Color(0xFFffc28d);
  static final Color iconColor2 = const Color(0xFFfcab88);
  static final Color paraColor = const Color(0xFF8f837f);
  static final Color mainColor = const Color(0xFF89dad0);
  static final Color mainBlockColor = const Color(0xFF332d2b);
  static final Color textColor = const Color(0xFFccc7c5);
  static final Color buttonBackgroundColor = const Color(0xFFf7f6f4);
  static final Color signColor = const Color(0xFFa9a29f);
  static final Color titleColor = const Color(0xFF5c524f);
  static final Color yellowColor = const Color(0xFFffd372);

  static TextStyle h1Style =
      const TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  static TextStyle h2Style = const TextStyle(fontSize: 22);
  static TextStyle h3Style = const TextStyle(fontSize: 20);
  static TextStyle h4Style = const TextStyle(fontSize: 18);
  static TextStyle h5Style = const TextStyle(fontSize: 16);
  static TextStyle h6Style = const TextStyle(fontSize: 14);

  static List<BoxShadow> shadow = <BoxShadow>[
    BoxShadow(color: Color(0xfff8f8f8), blurRadius: 10, spreadRadius: 15),
  ];

  static EdgeInsets padding =
      const EdgeInsets.symmetric(horizontal: 20, vertical: 10);
  static EdgeInsets hPadding = const EdgeInsets.symmetric(
    horizontal: 10,
  );

  static double fullWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double fullHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
