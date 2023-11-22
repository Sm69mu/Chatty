import 'package:flutter/material.dart';

class ChatPopupMenu extends StatelessWidget {
  const ChatPopupMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PopupMenuItem(child: Text('View Profile'));
  }
}
