import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Container(child: Text('Hello World'))],
      ),
    );
  }
}
