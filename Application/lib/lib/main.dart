import 'package:flutter/material.dart';
import 'lvlshow/lvl1.dart';
import 'lvlshow/lvl2.dart';
import 'lvlshow/lvl3.dart';
import 'lvlshow/lvl4.dart';
import 'lvlshow/lvl5.dart';

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
  void navigateToLevel(BuildContext context, Widget levelWidget) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => levelWidget,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a Level'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Navigate to Level 1
                navigateToLevel(context, Level1());
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Level 1',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0), // Add a gap of 16 pixels between buttons
            ElevatedButton(
              onPressed: () {
                // Navigate to Level 2
                navigateToLevel(context, Level2());
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlue,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Level 2',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0), // Add a gap of 16 pixels between buttons
            ElevatedButton(
              onPressed: () {
                // Navigate to Level 3
                navigateToLevel(context, Level3());
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(0, 204, 204, 1.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Level 3',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0), // Add a gap of 16 pixels between buttons
            ElevatedButton(
              onPressed: () {
                // Navigate to Level 4
                navigateToLevel(context, Level4());
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(174, 238, 238, 1.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Level 4',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0), // Add a gap of 16 pixels between buttons
            ElevatedButton(
              onPressed: () {
                // Navigate to Level 5
                navigateToLevel(context, Level5());
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Level 5',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
