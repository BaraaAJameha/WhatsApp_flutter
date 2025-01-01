import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings', style: TextStyle(color: Colors.black)),
        elevation: 0.0,
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              bottom: 80.0), // Prevent content from overflowing
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Search',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey.shade300,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                title: Text("Baraah Ajameha"),
                subtitle: Text("Hey there! I am using WhatsApp."),
                trailing: Icon(Icons.qr_code),
              ),
              Divider(),
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: Icon(Icons.face),
                title: Text("Avatar"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.list),
                title: Text("Lists"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.broadcast_on_home),
                title: Text("Broadcast messages"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text("Starred messages"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.devices),
                title: Text("Linked devices"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {},
              ),
              Divider(),
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("Account"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.lock),
                title: Text("Privacy"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.chat),
                title: Text("Chats"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Notifications"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.storage),
                title: Text("Storage and data"),
                trailing: Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
