import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text('Project Portofolio'),
        backgroundColor: const Color(0xFF0F172A),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      drawer: const CustomDrawer(currentPage: 'project'),
      body: const Center(
        child: Text(
          'Halaman Project (Akan dikerjakan berikutnya)',
          style: TextStyle(fontSize: 16, color: Color(0xFF64748B)),
        ),
      ),
    );
  }
}