import 'package:flutter/material.dart';

Widget chatActionTile({onPress, String? title, icon}) {
  return Column(
    children: [
      InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: onPress,
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 2.0),
              borderRadius: BorderRadius.circular(18)),
          child: icon,
        ),
      ),
      const SizedBox(
        height: 7,
      ),
      Text(
        title!,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
      )
    ],
  );
}
