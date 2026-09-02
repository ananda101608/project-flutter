import 'package:flutter/material.dart';
import 'pages/aboutpage.dart';
import 'pages/homepage.dart';
import 'pages/galeripage.dart';
import 'pages/contactpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ocean Trip Adventure',
      home: const HomePage(),
      routes: {
        '/about': (context) => const AboutPage(),
        '/contact': (context) => const ContactPage(),
        '/galeri': (context) => const GaleriPage(),
      },
    );
  }
}