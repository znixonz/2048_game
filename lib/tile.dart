import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  final int tilenumber;

  Tile({Key key, @required this.tilenumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color backgroundcolor = _getBackGroundColor();
    TextStyle textStyle = _getTextStyle();

    return Container(
      width: 72.5,
      height: 72.5,
      decoration: BoxDecoration(
        color: backgroundcolor,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      alignment: Alignment.center,
      child: Text(
        tilenumber.toString(),
        style: textStyle,
      ),
    );
  }

  Color _getBackGroundColor() {
    switch (tilenumber) {
      case 2:
        return Color(0xffeee4da);
      case 4:
        return Color(0xffeee1ca);
      case 8:
        return Color(0xfff1b17e);
      case 16:
        return Color(0xfff49669);
      case 32:
        return Color(0xfff57c63);
      case 64:
        return Color(0xfff46043);
      case 128:
        return Color(0xffeccf79);
      case 256:
        return Color(0xffeccb6a);
      case 512:
        return Color(0xffecc85a);
      case 1024:
        return Color(0xffecc44c);
      default:
        return Color(0xffecc140);
    }
  }

  TextStyle _getTextStyle() {
    double fontsize;
    Color fontcolor;

    if (tilenumber <= 8) {
      fontcolor = Color(0xfff9f6f2);
    } else {
      fontcolor = Color(0xff776d68);
    }

    if (tilenumber < 128) {
      fontsize = 28.0;
    } else if (tilenumber < 256) {
      fontsize = 26.0;
    } else if (tilenumber < 1024) {
      fontsize = 24.0;
    } else {
      fontsize = 22.0;
    }

    return TextStyle(
        fontSize: fontsize, color: fontcolor, fontWeight: FontWeight.bold);
  }
}
