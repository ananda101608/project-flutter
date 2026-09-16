import 'package:flutter/material.dart';
import 'pages/homepage.dart';
import 'pages/pendaftaran.dart';
import 'pages/hasildaftar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pendaftaran Ekstrakurikuler',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF4FBF7),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF166534),
          foregroundColor: Colors.white,
          elevation: 1,
          centerTitle: true,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF166534),
          primary: const Color(0xFF166534),
        ),
      ),
      home: const HomePage(),
      routes: {
        '/pendaftaran': (context) => const Pendaftaran(),
        '/hasildaftar': (context) => const Hasildaftar(),
      },
    );
  }
}