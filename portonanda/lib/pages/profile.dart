import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F9FF),
      appBar: AppBar(
        title: const Text(
          "Profile Saya",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF023E8A),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Drawer Header
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF023E8A),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xFFE0F2FE),
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Color(0xFF023E8A),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Ananda Rachmatu",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "RPL - SMKN 64 Jakarta",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFBAE6FD),
                    ),
                  ),
                ],
              ),
            ),
            // Menu Beranda
            ListTile(
              leading: const Icon(Icons.home, color: Color(0xFF023E8A)),
              title: const Text(
                "Beranda",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.popUntil(context, (route) => route.isFirst);
              },
            ),
            // Menu Profile
            ListTile(
              leading: const Icon(Icons.person, color: Color(0xFF0284C7)),
              title: const Text(
                "Profile",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            // Menu Skill
            ListTile(
              leading: const Icon(Icons.code, color: Color(0xFF059669)),
              title: const Text(
                "Skill",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, '/skill');
              },
            ),
            // Menu Project
            ListTile(
              leading: const Icon(Icons.work, color: Color(0xFF2563EB)),
              title: const Text(
                "Project",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, '/project');
              },
            ),
            // Menu Contact Me
            ListTile(
              leading: const Icon(Icons.phone, color: Color(0xFFEA580C)),
              title: const Text(
                "Contact Me",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, '/contactme');
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Header Foto & Biodata Singkat
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
                    radius: 45,
                    backgroundColor: Color(0xFFE0F2FE),
                    child: Icon(
                      Icons.person,
                      size: 55,
                      color: Color(0xFF023E8A),
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Ananda Rachmatu",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Siswa RPL • SMKN 64 Jakarta",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFBAE6FD),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Junior Mobile & Flutter Developer",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),

            // Card 1: Latar Belakang (Tentang Saya)
            Card(
              elevation: 2,
              margin: const EdgeInsets.only(bottom: 16),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Color(0xFFE0F2FE),
                          child: Icon(
                            Icons.person_pin,
                            color: Color(0xFF023E8A),
                            size: 20,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Latar Belakang",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF023E8A),
                          ),
                        ),
                      ],
                    ),
                    Divider(color: Color(0xFFBAE6FD)),
                    SizedBox(height: 6),
                    Text(
                      "Halo! Nama saya Ananda Rachmatu, seorang pelajar kejuruan di SMK Negeri 64 Jakarta yang mengambil konsentrasi keahlian Rekayasa Perangkat Lunak (RPL).",
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF334155),
                        height: 1.5,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Sejak awal mendalami dunia teknologi, saya sangat antusias dengan dunia rekayasa aplikasi. Saya aktif mengasah kemampuan logika pemrograman, perancangan antarmuka pengguna (UI/UX), hingga pembuatan aplikasi mobile multiplatform menggunakan Flutter dan Dart.",
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF334155),
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Card 2: Hobi & Minat
            Card(
              elevation: 2,
              margin: const EdgeInsets.only(bottom: 16),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Color(0xFFCCFBF1),
                          child: Icon(
                            Icons.sports_esports,
                            color: Color(0xFF0D9488),
                            size: 20,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Hobi & Minat",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0D9488),
                          ),
                        ),
                      ],
                    ),
                    Divider(color: Color(0xFFBAE6FD)),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        backgroundColor: Color(0xFFE0F2FE),
                        child: Icon(
                          Icons.code,
                          color: Color(0xFF0284C7),
                          size: 20,
                        ),
                      ),
                      title: Text(
                        "Eksplorasi Coding & Framework",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      subtitle: Text(
                        "Mencoba berbagai widget Flutter dan membangun aplikasi latihan baru.",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    Divider(color: Color(0xFFF1F5F9)),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        backgroundColor: Color(0xFFF3E8FF),
                        child: Icon(
                          Icons.palette,
                          color: Color(0xFF7C3AED),
                          size: 20,
                        ),
                      ),
                      title: Text(
                        "Desain Tampilan UI/UX",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      subtitle: Text(
                        "Menata warna, tata letak, dan kartu agar aplikasi nyaman dilihat pengguna.",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    Divider(color: Color(0xFFF1F5F9)),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        backgroundColor: Color(0xFFFFEDD5),
                        child: Icon(
                          Icons.explore,
                          color: Color(0xFFEA580C),
                          size: 20,
                        ),
                      ),
                      title: Text(
                        "Petualangan & Olahraga",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      subtitle: Text(
                        "Menyukai aktivitas outdoor dan tema laut yang menginspirasi karya aplikasi saya.",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Card 3: Cita-cita & Harapan
            Card(
              elevation: 2,
              margin: const EdgeInsets.only(bottom: 16),
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: Color(0xFFFFEDD5),
                          child: Icon(
                            Icons.flag,
                            color: Color(0xFFEA580C),
                            size: 20,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Cita-cita & Tujuan",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFEA580C),
                          ),
                        ),
                      ],
                    ),
                    Divider(color: Color(0xFFBAE6FD)),
                    SizedBox(height: 6),
                    Text(
                      "Cita-cita saya adalah menjadi seorang Mobile Application Developer / Software Engineer profesional yang mampu membangun produk digital berkualitas tinggi serta bermanfaat bagi masyarakat luas.",
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF334155),
                        height: 1.5,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Saya berkomitmen untuk terus konsisten belajar, meningkatkan penguasaan arsitektur kode, serta siap berkontribusi secara profesional di industri teknologi digital.",
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF334155),
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Card 4: Ringkasan Biodata Diri
            Card(
              elevation: 2,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.school,
                        color: Color(0xFF023E8A),
                      ),
                      title: Text(
                        "Pendidikan",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      subtitle: Text("SMK Negeri 64 Jakarta (RPL)"),
                    ),
                    Divider(color: Color(0xFFBAE6FD)),
                    ListTile(
                      leading: Icon(
                        Icons.location_on,
                        color: Color(0xFF023E8A),
                      ),
                      title: Text(
                        "Domisili",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      subtitle: Text("Jakarta, Indonesia"),
                    ),
                    Divider(color: Color(0xFFBAE6FD)),
                    ListTile(
                      leading: Icon(
                        Icons.phone_android,
                        color: Color(0xFF023E8A),
                      ),
                      title: Text(
                        "Fokus Utama",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      subtitle: Text("Flutter & Mobile Application Development"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
