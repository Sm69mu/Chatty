import 'package:chatty/screens/call_list_screen.dart';
import 'package:chatty/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    var pages = [const HomeScreen(), const CallListScreen()];
    return Scaffold(
      body: pages[currentPageIndex],
      bottomNavigationBar: NavigationBar(
          selectedIndex: currentPageIndex,
          onDestinationSelected: (value) {
            setState(() {
              currentPageIndex = value;
            });
          },
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.chat_bubble_outlined), label: "Chat"),
            NavigationDestination(
                icon: Icon(Icons.call_outlined), label: "Calls")
          ]),
    );
  }
}
