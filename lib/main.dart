import 'package:flutter/material.dart';
import 'package:reddit_frontpage_clone_flutter/screen/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reddit Clone',
      theme: ThemeData(
       
        primarySwatch: Colors.amber,
      ),
      home: HomeScreen(),
    );
  }
}

