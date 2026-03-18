import 'package:flutter/material.dart';

class CoffeeImageWidget extends StatelessWidget {
  const CoffeeImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      // Menggunakan .expand agar otomatis memenuhi ruang
      child: Image.asset(
        'assets/images/kopi.jpg', // Path sesuai yang didaftarkan di pubspec
        fit: BoxFit.cover,
        // Tips: Untuk Image.asset, kita tidak butuh loadingBuilder
        // karena gambar dimuat langsung dari memori lokal.
        errorBuilder: (context, error, stackTrace) {
          return Container(
            color: Colors.brown[300],
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.broken_image, size: 80, color: Colors.white),
                SizedBox(height: 10),
                Text(
                  'Gambar tidak ditemukan',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
