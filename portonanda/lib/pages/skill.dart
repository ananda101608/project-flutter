import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SkillPage extends StatelessWidget {
  const SkillPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F9FF),
      appBar: AppBar(
        title: const Text(
          "Skill & Keahlian",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF023E8A),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Card Header Informasi
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: const Color(0xFF023E8A),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Color(0xFFE0F2FE),
                    child: Icon(
                      Icons.code,
                      size: 40,
                      color: Color(0xFF023E8A),
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Keahlian Saya",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Bahasa pemrograman, framework, dan teknologi yang saya kuasai dan pelajari di RPL SMKN 64 Jakarta.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white70,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),

            // 1. Skill Flutter
            Card(
              elevation: 2,
              margin: const EdgeInsets.only(bottom: 12),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: const ListTile(
                leading: CircleAvatar(
                  backgroundColor: Color(0xFFE0F2FE),
                  child: Icon(
                    Icons.flutter_dash,
                    color: Color(0xFF0284C7),
                    size: 24,
                  ),
                ),
                title: Text(
                  "Flutter",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text("Framework UI untuk aplikasi mobile dan desktop"),
              ),
            ),

            // 2. Skill HTML
            Card(
              elevation: 2,
              margin: const EdgeInsets.only(bottom: 12),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: const ListTile(
                leading: CircleAvatar(
                  backgroundColor: Color(0xFFFFEBE6),
                  child: Icon(
                    FontAwesomeIcons.html5,
                    color: Color(0xFFE34F26),
                    size: 22,
                  ),
                ),
                title: Text(
                  "HTML",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text("Penyusunan struktur dan konten halaman website"),
              ),
            ),

            // 3. Skill CSS
            Card(
              elevation: 2,
              margin: const EdgeInsets.only(bottom: 12),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: const ListTile(
                leading: CircleAvatar(
                  backgroundColor: Color(0xFFE6F0FA),
                  child: Icon(
                    FontAwesomeIcons.css3Alt,
                    color: Color(0xFF1572B6),
                    size: 22,
                  ),
                ),
                title: Text(
                  "CSS",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text("Styling, tata letak, dan desain tampilan web"),
              ),
            ),

            // 4. Skill Bootstrap
            Card(
              elevation: 2,
              margin: const EdgeInsets.only(bottom: 12),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: const ListTile(
                leading: CircleAvatar(
                  backgroundColor: Color(0xFFF3E8FF),
                  child: Icon(
                    FontAwesomeIcons.bootstrap,
                    color: Color(0xFF7952B3),
                    size: 22,
                  ),
                ),
                title: Text(
                  "Bootstrap",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text("CSS framework untuk pembuatan website responsif"),
              ),
            ),

            // 5. Skill JavaScript (JS)
            Card(
              elevation: 2,
              margin: const EdgeInsets.only(bottom: 12),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: const ListTile(
                leading: CircleAvatar(
                  backgroundColor: Color(0xFFFEF9C3),
                  child: Icon(
                    FontAwesomeIcons.js,
                    color: Color(0xFFCA8A04),
                    size: 22,
                  ),
                ),
                title: Text(
                  "JavaScript (JS)",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text("Interaktivitas dan logika pemrograman web dinamis"),
              ),
            ),

            // 6. Skill Python (PY)
            Card(
              elevation: 2,
              margin: const EdgeInsets.only(bottom: 12),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: const ListTile(
                leading: CircleAvatar(
                  backgroundColor: Color(0xFFE0F2FE),
                  child: Icon(
                    FontAwesomeIcons.python,
                    color: Color(0xFF3776AB),
                    size: 22,
                  ),
                ),
                title: Text(
                  "Python (PY)",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text("Bahasa pemrograman untuk logika, scripting, dan data"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}