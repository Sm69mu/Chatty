import 'package:chatty/constants/const_exports.dart';
import 'package:chatty/widgets/chat_popup_menu.dart';
import 'package:chatty/widgets/chat_text_field.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final chatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
            actions: [
              InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  const ChatPopupMenu();
                },
                child: const CircleAvatar(
                  foregroundImage: AssetImage(improfile),
                ),
              )
            ],
            title: const Text(
              'Soumyajit Mukherjee',
              style: TextStyle(fontWeight: FontWeight.w800),
            )),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: deviceWidth - 100,
                  child: chatTextField(),
                ),
                SizedBox(
                  width: deviceWidth / 40,
                ),
                FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  child: Icon(
                    Icons.send_outlined,
                    color: Colors.grey[800],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
