import 'package:flutter/material.dart';
import 'package:praticecode/counter_view.dart';
import 'package:praticecode/profile_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: ProfileView(),
      home: CounterView(),
    );
  }
}
