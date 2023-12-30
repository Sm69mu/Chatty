import 'package:chatty/constants/const_exports.dart';
import 'package:chatty/screens/chat_profile_screen.dart';
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
    // ignore: unused_local_variable
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ChatProfileScreen()),
            );
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 22,
                foregroundImage: AssetImage(improfile),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text(
                    "Soumyajit Mukherjee",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "last seen 12:30 pm",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ],
          ),
        ),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              // Handle menu item selection
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: "View Profile",
                  child: Row(
                    children: [
                      Icon(Icons.person_outline),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "View Profile",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                const PopupMenuItem(
                  value: "Voice Call",
                  child: Row(
                    children: [
                      Icon(Icons.call_outlined),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Voice Call",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                const PopupMenuItem(
                  value: "Video Call",
                  child: Row(
                    children: [
                      Icon(Icons.videocam_outlined),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Video Call",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                const PopupMenuItem(
                  value: "Block",
                  child: Row(
                    children: [
                      Icon(Icons.block_outlined),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Block",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: chatTextField(),
              ),
              SizedBox(
                width: deviceWidth / 40,
              ),
              FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {
                  // Handle send button press
                },
                child: Icon(
                  Icons.send_outlined,
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
