import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'chatTile.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.more_horiz, color: Colors.black),
        actions: [
          Icon(Icons.camera_alt, color: Colors.black),
          SizedBox(width: 15),
          Icon(Icons.add, color: Colors.green),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(
              "Chats",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FilterChip(label: Text("All"), onSelected: (value) {}),
                FilterChip(label: Text("Unread"), onSelected: (value) {}),
                FilterChip(label: Text("Favorites"), onSelected: (value) {}),
                FilterChip(label: Text("Groups"), onSelected: (value) {}),
                FilterChip(label: Icon(Icons.add), onSelected: (value) {}),
              ],
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              ChatTile(
                name: "Sarah",
                message: "See you tomorrow!",
                time: "12:02 PM",
              ),
              ChatTile(
                name: "Mlk",
                message: "😂🙌",
                time: "11:02 PM",
              ),
              ChatTile(
                name: "Dr.Mustafa",
                message: "Voice Message",
                time: "10:02 PM",
              ),
              ChatTile(
                name: "Rahaf",
                message: "Photo",
                time: "9:04 PM",
              ),
              ChatTile(
                name: "Dena",
                message: "Document",
                time: "7:55 PM",
              ),
              ChatTile(
                name: "Dr.Rawan",
                message: "Voice Message",
                time: "6:00 PM",
              ),
              ChatTile(
                name: "Salsabel",
                message: "Document",
                time: "5:55 PM",
              ),
              ChatTile(
                name: "Sama",
                message: "Voice Message",
                time: "3:00 PM",
              ),
            ],
          ))
        ],
      ),
    );
  }
}
