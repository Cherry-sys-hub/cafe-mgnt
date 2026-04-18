import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets/action_card.dart';
import 'widgets/stat_card.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Admin Panel'),
        backgroundColor: Colors.brown,
        foregroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hello, Admin!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
            const Text(
              'Welcome back to your cafe',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 24),

            // Stats Row
            Row(
              children: [
                StatCard(title: 'Orders', value: '12', color: Colors.blue),
                StatCard(
                  title: 'Revenue',
                  value: 'Rs. 450',
                  color: Colors.green,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                StatCard(title: 'Tables', value: '8/10', color: Colors.orange),
                StatCard(title: 'Staff', value: '4', color: Colors.purple),
              ],
            ),

            const SizedBox(height: 32),
            const Text(
              'Quick Actions',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            // Main Actions Grid
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: [
                ActionCard(
                  title: 'Manage Menu',
                  icon: FontAwesomeIcons.utensils,
                  color: Colors.brown,
                  onTap: () {
                    _showComingSoon(context, 'Manage Menu');
                  },
                ),
                ActionCard(
                  title: 'Table Setup',
                  icon: FontAwesomeIcons.table,
                  color: Colors.brown,
                  onTap: () {
                    _showComingSoon(context, 'Table Setup');
                  },
                ),
                ActionCard(
                  title: 'Reports',
                  icon: FontAwesomeIcons.chartLine,
                  color: Colors.brown,
                  onTap: () {
                    _showComingSoon(context, 'Reports');
                  },
                ),
                ActionCard(
                  title: 'Staff List',
                  icon: FontAwesomeIcons.usersGear,
                  color: Colors.brown,
                  onTap: () {
                    _showComingSoon(context, 'Staff List');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showComingSoon(BuildContext context, String feature) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$feature feature is coming soon!'),
        duration: const Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
