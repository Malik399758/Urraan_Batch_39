import 'package:flutter/material.dart';

import 'challenge_screen.dart';
import 'leaderboard_screen.dart';
import 'mock_data.dart';

void main() => runApp(FitnessApp());

class FitnessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
    );
  }
}

// Mock data is declared here...

class DashboardScreen extends StatelessWidget {
  Future<void> showNotification(BuildContext context, String message) {
    return showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text('Alert'),
        content: Text(message),
      );
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
    print(message); // Simulates notification via logs
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Dashboard',style: TextStyle(
          color: Colors.white
        ),),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications,color: Colors.white,),
            onPressed: () {
              showNotification(context, 'Stay hydrated! Drink more water.');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  _buildCard('Steps', '${userStats['steps']} steps',
                      Icons.directions_walk, Colors.blue),
                  _buildCard('Water', '${userStats['waterIntake']}L',
                      Icons.local_drink, Colors.teal),
                  _buildCard('Calories', '${userStats['caloriesBurned']} kcal',
                      Icons.local_fire_department, Colors.orange),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChallengesScreen()),
                      );
                    },
                    child: _buildCard('Challenges', 'View Challenges',
                        Icons.flag, Colors.red),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => LeaderboardScreen()),
                );
              },
              child: Text('View Leaderboard',style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w500
              ),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(String title, String value, IconData icon, Color color) {
    return Card(
      color: color.withOpacity(0.8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 48, color: Colors.white),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(height: 10),
          Text(
            value,
            style: TextStyle(fontSize: 16, color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
