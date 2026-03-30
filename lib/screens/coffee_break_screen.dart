import 'package:flutter/material.dart';
import '../widgets/coffee_image_widget.dart';
import '../widgets/get_started_button.dart';

class CoffeeBreakScreen extends StatelessWidget {
  const CoffeeBreakScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // BAGIAN ATAS: Gambar Coffee (70%)
          Expanded(flex: 7, child: const CoffeeImageWidget()),

          // BAGIAN BAWAH: Teks, Icon Geser, Tombol (30%)
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 47, 27, 14),
                    Color.fromARGB(255, 53, 33, 19),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Teks Utama
                    const SizedBox(height: 30), // Spacing atas
                    Align(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Time for a Coffee Break.....',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    const SizedBox(height: 25),

                    // Teks Deskripsi
                    Align(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Your daily dose of fresh brewed delivered to your doorstep. Start your coffee journey now!',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20, color: Colors.white70),
                      ),
                    ),

                    const SizedBox(height: 40),

                    // Icon Geser (3 titik horizontal)
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center, // Tengah
                        children: List.generate(
                          3,

                          (index) => Container(
                            width: index == 0 ? 24 : 8,
                            height: 8,
                            margin: const EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              color: index == 0
                                  ? Colors.white
                                  : Colors.white.withValues(alpha: 0.5),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 25),

                    // Tombol Get Started di Bawah Icon Geser
                    const Center(child: GetStartedButton()),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
