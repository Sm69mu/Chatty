import 'package:chatty/constants/const_exports.dart';
import 'package:chatty/widgets/chat_action_tile.dart';
import 'package:flutter/material.dart';

class ChatProfileScreen extends StatelessWidget {
  const ChatProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lasSeenTime = "12:40 pm ";
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Soumyajit Mukherjee",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () {
                showDialog(
                  barrierColor: Colors.black,
                  context: context,
                  builder: (context) {
                    return Dialog.fullscreen(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: Image.asset(improfile),
                      ),
                    );
                  },
                );
              },
              child: const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage(improfile),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
           Text(
            "last seen on $lasSeenTime",
            style: const TextStyle(fontSize: 15),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              chatActionTile(
                  icon: const Icon(Icons.call_outlined),
                  title: "Call",
                  onPress: () {}),
              chatActionTile(
                  icon: const Icon(Icons.videocam_outlined),
                  title: "Video Call",
                  onPress: () {}),
              chatActionTile(
                  icon: const Icon(Icons.chat_bubble_outline_outlined),
                  title: "Message",
                  onPress: () {}),
              chatActionTile(
                  icon: const Icon(Icons.block_outlined),
                  title: "Block",
                  onPress: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
