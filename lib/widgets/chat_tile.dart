import 'package:chatty/constants/const_exports.dart';
import 'package:chatty/screens/chat_screen.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(14),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ChatScreen()),
        );
      },
      child: const ListTile(
        selectedColor: Colors.grey,
        trailing: Icon(Icons.arrow_forward_ios_rounded),
        title: Text(
          'Soumyajit Mukherjee',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: CircleAvatar(
          foregroundImage: AssetImage(improfile),
          radius: 25,
        ),
      ),
    );
  }
}
