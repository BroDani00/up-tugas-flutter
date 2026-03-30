import 'package:flutter/material.dart';
import '../models/coffee_model.dart';

class DetailScreen extends StatefulWidget {
  final Coffee coffee;
  const DetailScreen({super.key, required this.coffee});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  String selectedSize = 'M';
  final Color primaryColor = const Color(
    0xFFC67C4E,
  ); // Variabel warna agar ringkas

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
        ), // Ringkas: Otomatis Navigator.pop
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {},
          ),
        ],
        title: const Text(
          "Detail",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildImage(),
            const SizedBox(height: 20),
            _buildTitleAndRating(),
            const Divider(height: 30),
            _buildSectionTitle("Description"),
            const SizedBox(height: 10),
            _buildDescription(),
            const SizedBox(height: 25),
            _buildSectionTitle("Size"),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "S",
                "M",
                "L",
              ].map((s) => _buildSizeButton(s)).toList(),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomAction(),
    );
  }

  // --- SUB-WIDGETS ---

  Widget _buildImage() => ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: Image.asset(
      widget.coffee.image,
      height: 250,
      width: double.infinity,
      fit: BoxFit.cover,
    ),
  );

  Widget _buildTitleAndRating() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.coffee.name,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text(widget.coffee.type, style: const TextStyle(color: Colors.grey)),
        ],
      ),
      Row(
        children: [
          Icon(Icons.star, color: primaryColor, size: 24),
          Text(
            " ${widget.coffee.rating}",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const Text(" (2,330)", style: TextStyle(color: Colors.grey)),
        ],
      ),
    ],
  );

  Widget _buildSectionTitle(String title) => Text(
    title,
    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  );

  Widget _buildDescription() => RichText(
    text: TextSpan(
      style: const TextStyle(color: Colors.grey, height: 1.5),
      children: [
        TextSpan(text: widget.coffee.description),
        TextSpan(
          text: " Read More",
          style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );

  Widget _buildSizeButton(String size) {
    bool isSelected = selectedSize == size;
    return GestureDetector(
      onTap: () => setState(() => selectedSize = size),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.28,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFFFF5EE) : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? primaryColor : Colors.grey.shade300,
          ),
        ),
        child: Center(
          child: Text(
            size,
            style: TextStyle(
              color: isSelected ? primaryColor : Colors.black,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBottomAction() => Container(
    padding: const EdgeInsets.fromLTRB(25, 10, 25, 25),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Price", style: TextStyle(color: Colors.grey)),
            Text(
              "\$ ${widget.coffee.price}",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: const Text(
            "Buy Now",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}
