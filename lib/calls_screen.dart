import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'callTile.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.more_horiz, color: Colors.black),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: Text("All", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Missed"),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(
              "Calls",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Search',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.search),
            ),
          ),
          ListTile(
            title: Text(
              "Favorites",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text("Add favorite"),
            onTap: () {},
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Text(
              "Recent",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
          Expanded(
              child: ListView(
            children: [
              const CallTile(
                name: 'Ibrahim ',
                status: 'Outgoing',
                time: ' 4:44PM',
              ),
              const CallTile(
                name: 'Sarah ',
                status: 'Missed',
                time: ' 19/12/2024',
              ),
              const CallTile(
                name: 'Dana ',
                status: 'Outgoing',
                time: '21/11/2024',
              ),
              const CallTile(
                name: 'Salma ',
                status: 'Missed',
                time: ' 15/11/2024',
              ),
              const CallTile(
                name: 'Sarah',
                status: 'Outgoing',
                time: ' 15/11/2024',
              ),
              const CallTile(
                name: 'Hamam',
                status: 'Missed',
                time: ' 17/10/2024',
              ),
              const CallTile(
                name: 'Malk',
                status: 'Outgoing',
                time: ' 17/10/2024',
              ),
              const CallTile(
                name: 'Mohammad',
                status: 'Outgoing',
                time: ' 13/10/2024',
              ),
            ],
          )),
        ],
      ),
    );
  }
}
