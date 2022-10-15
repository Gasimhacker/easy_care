import 'package:flutter/material.dart';

const kNameTextStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.w500);
const kSearchTextStyle = TextStyle(color: Color(0xffc7c7c7));
const kExplainTextStyle = TextStyle(color: Color(0xffaaaaaa), fontSize: 13);
ShapeBorder kCardShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(30),
);
ShapeBorder kCategoryShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(5),
);

ShapeBorder kTimeCardShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(5),
);
BoxDecoration kBoxDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(30),
  gradient: const LinearGradient(colors: [
    Color(0xff1e4ec8),
    Color(0xff6890f6),
  ], begin: Alignment.topLeft, end: Alignment.topRight),
);

BoxDecoration kLoginBoxDecoration = const BoxDecoration(
  gradient: LinearGradient(
      colors: [Color(0xff6890f6), Color(0xff1e4ec8)],
      begin: Alignment.topLeft,
      end: Alignment.topRight),
);
const kFormCardTextStyle = TextStyle(fontWeight: FontWeight.bold);
const kEasyCareTextStyle =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white);

const kFormCardDecoration = InputDecoration(
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
    ),
    hintStyle: kSearchTextStyle);
const kTextFieldPadding = EdgeInsets.only(left: 8.0, top: 10);
BoxDecoration kHospitalsBoxDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(15),
  color: Colors.white,
);
const kThemeColor = Color(0xff1e4ec8);
const kLocationTextStyle = TextStyle(
  color: Color(0xff828282),
  fontSize: 12,
);
