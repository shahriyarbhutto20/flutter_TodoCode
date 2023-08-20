import 'package:flutter/material.dart';
import 'package:praticecode/widgets/custom_chat_title.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Text Data')),
        body: SafeArea(
          child: Container(
              // width: double.infinity,
              child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return Container(
                      child: ListTile(
                        tileColor: index % 2 == 0 ? Colors.amber : Colors.red,
                        title: Text(index.toString()),
                      ),
                    );
                  })),
        ));
  }
}
