import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
        backgroundColor: Color(0xFFFFA6A6),
      ),
      body: Container(
        color: Color(0xFFFFA6A6),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "About Us",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Cursive',
              ),
            ),
            SizedBox(height: 20),
            Text(
              "🌟 Welcome to Our Store! 🌟",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Cursive',
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              "We are dedicated to bringing you the finest products and exceptional service. Our team carefully curates each item, ensuring the highest quality and style. Your satisfaction is our top priority, and we strive to make your shopping experience delightful and memorable. Thank you for choosing us!",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              "✨ Our Vision ✨",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Cursive',
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              "To be your go-to destination for unique and high-quality products that inspire and empower.",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              "💖 Our Mission 💖",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Cursive',
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              "To deliver an exceptional shopping experience with a personal touch.",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
