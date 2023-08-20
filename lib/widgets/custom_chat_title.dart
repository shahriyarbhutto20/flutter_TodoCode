import 'package:flutter/material.dart';

class CustomChatTile extends StatelessWidget {
  final String name;
  final String title;
  final String subTitle;
  final String time;
  const CustomChatTile(
      {super.key,
      required this.name,
      required this.title,
      required this.subTitle,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.green,
      leading: const CircleAvatar(
        radius: 20,
        backgroundColor: Colors.orange,
      ),
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: Text(time),
    );
  }
}
