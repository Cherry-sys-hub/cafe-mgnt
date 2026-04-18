import 'package:flutter/material.dart';

import 'features/auth/login_screen.dart';

void main() {
  runApp(const CafeMgntApp());
}

class CafeMgntApp extends StatelessWidget {
  const CafeMgntApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cafe Management System',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
