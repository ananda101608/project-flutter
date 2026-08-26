import 'package:flutter/material.dart';
import 'pages/main_page.dart';

void main() {
  runApp(const CompanyProfileApp());
}

class CompanyProfileApp extends StatelessWidget {
  const CompanyProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "KKS Company",
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.orange,
      ),
      home: const MainPage(),
    );
  }
}
