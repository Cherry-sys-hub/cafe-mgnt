import 'package:flutter/material.dart';

class KitchenDashboard extends StatelessWidget {
  const KitchenDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kitchen Dashboard'),
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text('Welcome, Kitchen Staff!', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
