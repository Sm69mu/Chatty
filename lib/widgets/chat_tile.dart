import 'package:chatty/constants/const_exports.dart';
import 'package:chatty/screens/chat_profile_screen.dart';
import 'package:chatty/screens/chat_screen.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 70,
          child: InkWell(
            borderRadius: BorderRadius.circular(18),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ChatScreen()));
            },
            child: ListTile(
              selectedColor: Colors.grey,
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              title: const Text(
                'Soumyajit Mukherjee',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              leading: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChatProfileScreen()));
                 
                },
                child: const CircleAvatar(
                  foregroundImage: AssetImage(improfile),
                  radius: 28,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        )
      ],
    );
  }
}
