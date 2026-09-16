import 'package:flutter/material.dart';

class ContactMePage extends StatelessWidget {
  const ContactMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Me"),
        backgroundColor: const Color(0xFF0F172A),
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text("Halaman Contact Me"),
      ),
    );
  }
}