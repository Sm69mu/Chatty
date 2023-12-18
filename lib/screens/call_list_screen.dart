import 'package:flutter/material.dart';

class CallListScreen extends StatelessWidget {
  const CallListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_rounded,
                size: 31,
              )),
          PopupMenuButton<String>(
            onSelected: (value) {
              // Handle menu item selection
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: "Clear Call logs",
                  child: Row(
                    children: [
                      Text(
                        "Clear Call logs",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                const PopupMenuItem(
                  value: "Settings",
                  child: Row(
                    children: [
                      Text(
                        "Settings",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ];
            },
          ),
        ],
        automaticallyImplyLeading: false,
        title: const Text(
          "Calls",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {},
                child: Icon(
                  Icons.add_ic_call_outlined,
                  color: Colors.grey[800],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
