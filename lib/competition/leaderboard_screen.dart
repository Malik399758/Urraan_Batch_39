import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Mock data for leaderboard
final leaderboard = [
  {'name': 'Alice', 'steps': 12000},
  {'name': 'Bob', 'steps': 10000},
  {'name': 'Charlie', 'steps': 8500},
  {'name': 'You', 'steps': 8500},
];

class LeaderboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leaderboard',style: TextStyle(
          color: Colors.white
        ),),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: leaderboard.length,
        itemBuilder: (context, index) {
          final user = leaderboard[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(
                  '${index + 1}',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              title: Text(user['name']!.toString()),
              subtitle: Text('${user['steps']} steps'),
              trailing: user['name'] == 'You'
                  ? Icon(Icons.star, color: Colors.yellow)
                  : null,
            ),
          );
        },
      ),
    );
  }
}
