import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UpdateTile extends StatelessWidget {
  final String name;
  final String time;

  const UpdateTile({
    required this.name,
    required this.time,
  });

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
      subtitle: Text(time, maxLines: 1, overflow: TextOverflow.ellipsis),
    );
  }
}
