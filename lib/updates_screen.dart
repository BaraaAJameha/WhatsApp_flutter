import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsapp_project/update.dart';

class UpdateScreen extends StatefulWidget {
  const UpdateScreen({super.key});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: const Icon(Icons.more_horiz, color: Colors.black),
          // Ensure title alignment on Android
        ),
        body: Column(
          children: [
            ListTile(
              title: Text(
                "Updates",
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
            ListTile(
              title: Text(
                "Status",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("My status"),
              subtitle: Text("Add to my status"),
              trailing: Icon(Icons.camera_alt_rounded),
              onTap: () {},
            ),
            SizedBox(
              height: 20,
            ),
            Divider(),
            ListTile(
              title: Text("Recent updates"),
              onTap: () {},
            ),
            Expanded(
                child: ListView(
              children: [
                UpdateTile(
                  name: 'Malk',
                  time: '15h ago',
                ),
                UpdateTile(
                  name: 'Sarah',
                  time: '23h ago',
                ),
              ],
            ))
          ],
        ));
  }
}
