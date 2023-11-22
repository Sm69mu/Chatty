import 'package:flutter/material.dart';

Widget normalButton(BuildContext context,
    {String? title, color, onPress, textColor}) {
  double deviceWidth = MediaQuery.of(context).size.width;
  double deviceHeight = MediaQuery.of(context).size.height;
  return GestureDetector(
    onTap: onPress,
    child: Container(
      height: deviceHeight * 0.057,
      width: deviceWidth * 0.25,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(14), color: color),
      child: Center(
        child: Text(
          title!,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: textColor),
        ),
      ),
    ),
  );
}
