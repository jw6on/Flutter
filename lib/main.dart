import 'package:flutter/material.dart';
import 'login.dart'; // login.dart 파일을 import
import 'about_us.dart'; // about_us.dart 파일을 import

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StorePage(),
      routes: {
        '/login': (context) => LoginPage(),
        '/about': (context) => AboutUsPage(),
      },
    );
  }
}

class StorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFD9D9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildRoundedText("ABOUT US", context),
                    _buildRoundedText("SHOP ALL"),
                    _buildRoundedText("COLLECTION"),
                    _buildRoundedText("LOGIN", context),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ClipPath(
                      clipper: CustomClipPath(),
                      child: Image.asset("assets/home2.jpg", fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: ClipPath(
                      clipper: CustomClipPath(),
                      child: Image.asset("assets/home3.jpg", fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: ClipPath(
                      clipper: CustomClipPath(),
                      child: Image.asset("assets/home4.jpg", fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: ClipPath(
                      clipper: CustomClipPath(),
                      child: Image.asset("assets/home5.jpg", fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRoundedText(String text, [BuildContext? context]) {
    return GestureDetector(
      onTap: () {
        if (context != null) {
          if (text == "LOGIN") {
            Navigator.pushNamed(context, '/login');
          } else if (text == "ABOUT US") {
            Navigator.pushNamed(context, '/about');
          }
        }
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFFF5F5F5),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFFF6D6D),
            fontFamily: 'SophisticatedFont',
          ),
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width / 2, size.height - 50, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
