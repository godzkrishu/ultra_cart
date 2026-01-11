import 'package:flutter/material.dart';

SizedBox gapTop(double height) => SizedBox(height: height);
SizedBox gapRight(double width) => SizedBox(width: width);
EdgeInsets paddingAll(double value) => EdgeInsets.all(value);
EdgeInsets paddingLTRB(double left, double top, double right, double bottom) =>
    EdgeInsets.fromLTRB(left, top, right, bottom);

List<BoxShadow> defaultBoxShadow = const <BoxShadow>[
  BoxShadow(
    color: Color(0xffE5E5E5),
    blurRadius: 10.0,
    spreadRadius: 5.0,
  )
];
List<BoxShadow> defaultButtonShadow = const <BoxShadow>[
  BoxShadow(
    color: Colors.black,
    blurRadius: 4.0,
    offset: Offset(0, 4),
  )
];
