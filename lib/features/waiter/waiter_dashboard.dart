import 'package:flutter/material.dart';

class WaiterDashboard extends StatelessWidget {
  const WaiterDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Waiter Dashboard'),
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text('Welcome, Waiter!', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
