import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CommunitiesScreen extends StatefulWidget {
  const CommunitiesScreen({super.key});

  @override
  State<CommunitiesScreen> createState() => _CommunitiesScreenState();
}

class _CommunitiesScreenState extends State<CommunitiesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Communities', style: TextStyle(color: Colors.black)),
        elevation: 0.0,
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.people_alt_outlined),
            title: Text("New community"),
            onTap: () {},
          ),
          SizedBox(
            height: 20,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Community 1"),
            subtitle: Text("Join this community and interact with others"),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Community 2"),
            subtitle: Text("Join this community and interact with others"),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Community 3"),
            subtitle: Text("Join this community and interact with others"),
          ),
        ],
      ),
    );
  }
}
