import 'package:cofcof/screens/detail_screen.dart';
import 'package:flutter/material.dart';
//import 'screens/coffee_break_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Break',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.brown, fontFamily: 'Poppins'),
      home: const DetailScreen(),
    );
  }
}
