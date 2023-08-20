import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  List friends = ['moin', 'sherry', 'cj', 'dr'];

  TextEditingController friedListController = TextEditingController();

  addFried() {
    setState(() {
      friends.add(friedListController.text);
      friedListController.clear();
    });

    print(friedListController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: TextField(
            controller: friedListController,
          ),
          actions: [ElevatedButton(onPressed: addFried, child: Text('Add'))]),
      body: SafeArea(
          child: Container(
        child: ListView.builder(
          itemCount: friends.length,
          itemBuilder: (context, index) {
            return Container(
                margin: EdgeInsets.only(top: 15),
                color: Colors.red,
                child: ListTile(
                  title: Text(friends[index]),
                ));
          },
        ),
      )),
    );
  }
}
