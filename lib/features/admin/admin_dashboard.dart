import 'package:flutter/material.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text('Welcome, Admin!', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
