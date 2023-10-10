import 'package:fl_app/screen/image_capture_draw.dart';
import 'package:flutter/material.dart';

class Level3 extends StatelessWidget {
  void navigateToDrawingScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              DrawingScreen()), // Use your DrawingScreen widget
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Level 3'),
        backgroundColor: Colors.blue,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.edit), // You can use any appropriate icon here
            onPressed: () {
              // Call the function to navigate to the drawing screen
              navigateToDrawingScreen(context);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Level 3!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/level3.png',
              width: 200,
              height: 200,
            ),
            // Add your level-specific content below the image
          ],
        ),
      ),
    );
  }
}
