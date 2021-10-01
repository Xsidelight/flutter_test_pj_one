import 'package:flutter/material.dart';

void main() {
  runApp(const PlanetApp());
}

class PlanetApp extends StatelessWidget {
  const PlanetApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Planet App',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showText = false;

  @override
  Widget build(BuildContext context) {
    print('The build nethod is triggered');
    return Scaffold(
      appBar: AppBar(
        title: Text('Planet Earh'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                'https://freepngimg.com/thumb/earth/7-2-earth-png-pic-thumb.png'),
            if (showText)
              Text(
                'This is our home planet!',
                style: TextStyle(fontSize: 20, color: Colors.amber),
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            showText = !showText;
          });
        },
      ),
    );
  }
}
