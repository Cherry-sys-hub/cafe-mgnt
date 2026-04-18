import 'package:flutter/material.dart';

class ReceptionDashboard extends StatelessWidget {
  const ReceptionDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reception Dashboard'),
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text('Welcome, Receptionist!', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
