import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class ContactMePage extends StatelessWidget {
  const ContactMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text('Contact Me'),
        backgroundColor: const Color(0xFF0F172A),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      drawer: const CustomDrawer(currentPage: 'contactme'),
      body: const Center(
        child: Text(
          'Halaman Contact Me (Akan dikerjakan berikutnya)',
          style: TextStyle(fontSize: 16, color: Color(0xFF64748B)),
        ),
      ),
    );
  }
}