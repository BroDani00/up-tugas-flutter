import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Aksi ketika tombol ditekan
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Welcome to Coffee Journey!'),
            backgroundColor: Color.fromARGB(148, 78, 46, 28),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 255, 137, 40),
        foregroundColor: const Color.fromARGB(255, 253, 244, 244),
        padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 5,
      ),
      child: const Text(
        'Get Started',
        style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
      ),
    );
  }
}
