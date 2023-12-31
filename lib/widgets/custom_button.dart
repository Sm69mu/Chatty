import 'package:flutter/material.dart';

Widget customButton(BuildContext context, {String? title, onPress}) {
  double deviceWidth = MediaQuery.of(context).size.width;
  double deviceHeight = MediaQuery.of(context).size.height;
  return InkWell(
    onTap: onPress,
    child: Container(
      height: deviceHeight * 0.065,
      width: deviceWidth * 0.44,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title!,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
          ),
          const SizedBox(
            width: 15,
          ),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.black,
          )
        ],
      ),
    ),
  );
}
