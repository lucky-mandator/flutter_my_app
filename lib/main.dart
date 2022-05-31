import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'LionsBot Clean',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          '/': (context) => const HomePage(),
          // When navigating to the "/LoginPage" route, build the SecondScreen widget.
          '/loginPage': (context) => const SecondScreen(),

          '/imageScreen': (context) => RobotProfile(),
        });
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen when tapped.
            Navigator.pushNamed(context, '/loginPage');
          },
          child: const Text('Logo Screen'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Second Screen'),
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Navigate back to first screen when tapped.
              Navigator.pushNamed(context, '/imageScreen');
            },
            child: const Text('Go To Image Screen!'),
          ),
        ));
  }
}

class ImageScreen extends StatelessWidget {
  const ImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Image Screen'),
          backgroundColor: Colors.blue,
        ),
        body: const SafeArea(
            child: Center(child: Image(image: AssetImage('images/rex.jpg')))));
  }
}

class ScheduleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: <Widget>[
            Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: const Text('container')),
            Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: const Text('container')),
          ],
        ),
      ),
    );
  }
}

class RobotProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/rex.jpg'),
              ),
            Text('Rex', 
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold
              )
            ),
            SizedBox(height: 10,
            child: Divider(
                thickness: 0.5,
                indent: 50,
                endIndent: 50,
                color: Colors.white70
              ),
            ),
            Card(
              margin:  EdgeInsets.symmetric(vertical: 10, horizontal: 100),
              child: ListTile(
                leading: Icon(Icons.location_city),
                title: Text(
                  'Validation Room',
                  style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
