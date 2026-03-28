import 'package:flutter/material.dart';
import 'package:cofcof/screens/coffee_break_screen.dart';
// Import home_screen dihapus sementara karena tidak dipakai di sini.
// Navigasi ke home_screen sudah ditangani di dalam GetStartedButton.

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
      theme: ThemeData(
        primaryColor: const Color(
          0xFFC67C4E,
        ), // Warna orange kopi sebagai identitas
        fontFamily: 'Poppins',
      ),
      // Aplikasi dimulai dari halaman Intro
      home: const CoffeeBreakScreen(),
    );
  }
}
