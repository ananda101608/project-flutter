import 'package:flutter/material.dart';
import 'pages/beranda.dart';
import 'pages/profile.dart';
import 'pages/skill.dart';
import 'pages/project.dart';
import 'pages/contactme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portofolio Nanda',
      home: const BerandaPage(),
      routes: {
        '/profile': (context) => const ProfilePage(),
        '/skill': (context) => const SkillPage(),
        '/project': (context) => const ProjectPage(),
        '/contactme': (context) => const ContactMePage(),
      },
    );
  }
}
