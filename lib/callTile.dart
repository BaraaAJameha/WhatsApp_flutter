import 'package:flutter/material.dart';

class CallTile extends StatelessWidget {
  final String name;
  final String status;
  final String time;

  const CallTile(
      {required this.name, required this.status, required this.time});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey.shade300,
        child: Icon(
          Icons.person,
          color: Colors.white,
        ),
      ),
      title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(status, maxLines: 1, overflow: TextOverflow.ellipsis),
      trailing: Text(time, style: TextStyle(color: Colors.grey)),
    );
  }
}
