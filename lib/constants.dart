import 'package:flutter/material.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class Palette {
  static String sUrl = "http://192.168.133.1/codeigneter3";
  static Color bg1 = Color.fromRGBO(0, 0, 102, 1);
  static Color bg2 = Color.fromRGBO(0, 0, 110, 1);
  static Color bg3 = HexColor("#3396ff");
  static Color bg4 = HexColor("#1a1a1a");
  static Color orange = Color(0xfff7892b);

  static List<Color> colors = <Color>[Color.fromARGB(255, 255, 0, 0)];
}

const kPrimaryColor = Color(0xFF0C9869);
const kTextColor = Color(0xFF3C4046);
const kBackgroundColor = Color(0xFFF9F8FD);

const double kDefaultPadding = 20.0;
