import 'package:flutter/material.dart';
import 'package:whatsapp_project/settings_screen.dart';
import 'package:whatsapp_project/updates_screen.dart';

import 'calls_screen.dart';
import 'chats_screen.dart';
import 'communities_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return MainScreenState();
  }
}

class MainScreenState extends State<MainScreen> {
  Widget selectedWidget = const ChatScreen();
  int selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: selectedWidget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          selectedIndex = value;
          if (selectedIndex == 0) {
            selectedWidget = const UpdateScreen();
          } else if (selectedIndex == 1) {
            selectedWidget = const CallScreen();
          } else if (selectedIndex == 2) {
            selectedWidget = const CommunitiesScreen();
          } else if (selectedIndex == 3) {
            selectedWidget = const ChatScreen();
          } else {
            selectedWidget = const SettingScreen();
          }
          setState(() {});
        },
        currentIndex: selectedIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: Color.fromARGB(255, 22, 97, 24),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.update_outlined),
            label: "Updates",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_outlined),
            label: "Calls",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            label: "Communities",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
