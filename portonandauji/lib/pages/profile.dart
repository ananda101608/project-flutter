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
                    "Siswa RPL di SMKN 64 Jakarta",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFBAE6FD),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Lagi seru-serunya belajar bikin aplikasi Flutter 🚀",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),

            // Card 1: Tentang Saya (Bahasa Santai)
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
                            Icons.waving_hand,
                            color: Color(0xFF023E8A),
                            size: 20,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Kenalan Dulu Yuk!",
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
                      "Halo semuanya! Kenalin, nama saya Ananda Rachmatu. Saya sekarang sekolah di SMK Negeri 64 Jakarta jurusan RPL (Rekayasa Perangkat Lunak).",
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF334155),
                        height: 1.5,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Awalnya saya penasaran gimana sih caranya bikin aplikasi yang sering kita pakai di HP sehari-hari. Pas mulai nyoba ngoding, ternyata seru banget! Sekarang saya lagi asyik mendalami Flutter buat bikin aplikasi yang tampilannya rapi dan gampang dipakai.",
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

            // Card 2: Hobi & Hal yang Disukai
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
                            Icons.favorite,
                            color: Color(0xFF0D9488),
                            size: 20,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Hal yang Saya Sukai",
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
                          Icons.laptop_chromebook,
                          color: Color(0xFF0284C7),
                          size: 20,
                        ),
                      ),
                      title: Text(
                        "Ngulik Kodingan & Bikin Aplikasi",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      subtitle: Text(
                        "Paling senang kalau nemu ide baru terus dicoba bikin langsung jadi aplikasi.",
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
                        "Nata Tampilan Biar Rapi",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      subtitle: Text(
                        "Suka milih warna dan nyusun tombol supaya tampilan aplikasi enak dilihat.",
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
                        "Jalan-jalan & Suasana Laut",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      subtitle: Text(
                        "Suka cari angin segar di luar buat refreshing, salah satunya terinspirasi bikin tema diving di project saya!",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Card 3: Cita-cita Saya
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
                            Icons.rocket_launch,
                            color: Color(0xFFEA580C),
                            size: 20,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Cita-cita Saya",
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
                      "Cita-cita saya pengen jadi Mobile App Developer yang jago. Harapannya nanti bisa bikin aplikasi yang beneran berguna dan bisa ngebantu mempermudah aktivitas banyak orang.",
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF334155),
                        height: 1.5,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Mumpung masih di bangku SMK, saya mau terus nikmati proses belajarnya dan perbanyak karya project!",
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

            // Card 4: Sekilas Info Diri
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
                        "Sekolah",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      subtitle: Text("SMKN 64 Jakarta (Jurusan RPL)"),
                    ),
                    Divider(color: Color(0xFFBAE6FD)),
                    ListTile(
                      leading: Icon(
                        Icons.location_on,
                        color: Color(0xFF023E8A),
                      ),
                      title: Text(
                        "Asal",
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
                        "Lagi Fokus Belajar",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      subtitle: Text("Bikin Aplikasi HP pakai Flutter"),
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
