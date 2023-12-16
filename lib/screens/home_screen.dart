import 'package:chatty/constants/images.dart';
import 'package:chatty/screens/profile_screen.dart';
import 'package:chatty/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[120],
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'Chatty',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search_rounded,
                  size: 31,
                )),
            const SizedBox(
              width: 10,
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileScreen()),
                  );
                },
                icon: const CircleAvatar(
                  foregroundImage: AssetImage(improfile),
                ))
          ],
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const ChatTile(),
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  child: Icon(
                    Icons.chat_bubble_outline_outlined,
                    color: Colors.grey[800],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
