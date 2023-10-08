import 'package:flutter/material.dart';
import 'package:application/turshilt_page.dart';

void main() => runApp(const HomePage());

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CombinedScreen(),
    );
  }
}

class CombinedScreen extends StatelessWidget {
  void onPlayButtonPressed(BuildContext context) {
    // Navigate to the DrawingScreen when the "Play" button is pressed
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DrawingScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Play Button'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            onPlayButtonPressed(context);
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 24.0,
                ),
                SizedBox(width: 10),
                Text(
                  'Play',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
