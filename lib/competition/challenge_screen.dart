import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mock_data.dart';

class ChallengesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Challenges',style: TextStyle(
          color: Colors.white,
        ),),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: challenges.length,
        itemBuilder: (context, index) {
          final challenge = challenges[index];
          return Card(
            child: ListTile(
              leading: Icon(
                challenge['completed'] != null ? Icons.check_circle : Icons.circle,
                color: challenge['completed'] != null ? Colors.green : Colors.grey,
              ),
              title: Text(challenge['title']!.toString()),
              trailing: challenge['completed'] != null
                  ? Text('Completed', style: TextStyle(color: Colors.green))
                  : Text('Pending', style: TextStyle(color: Colors.red)),
            ),
          );
        },
      ),
    );
  }
}
