import 'package:flutter/material.dart';

Widget chatTextField() {
  return TextField(
    decoration: InputDecoration(
        prefixIcon: InkWell(
            borderRadius: BorderRadius.circular(14),
            onTap: () {},
            child: const Icon(Icons.add_circle_outline_sharp)),
        suffixIcon: InkWell(
            borderRadius: BorderRadius.circular(14),
            onTap: () {},
            child: const Icon(Icons.mic_outlined)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
        hintText: "Enter Your Message"),
  );
}
