import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("KKS Company"),
        backgroundColor: Colors.grey[900],
        foregroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/royal1.png',
                  width: 110,
                  height: 110,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                "Tentang KKS Company",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            const Divider(color: Colors.orange),


            const Text(
              "KKS Company adalah perusahaan yang bergerak di bidang teknologi dan inovasi. Kami berkomitmen untuk memberikan solusi terbaik bagi para klien kami.",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const SizedBox(height: 15),

            const Text(
              "Sejarah KKS Company",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 5),
            const Text(
              "SMKN 64 Jakarta (KKS Company) adalah lembaga kejuruan yang berbasis pada teknologi informasi dengan memiliki kompetensi unggulan di bidang RPL (Rekayasa Perangkat Lunak) dan DKV (Desain Komunikasi Visual). Berdiri sejak tahun 2026, kami berfokus pada inovasi digital, analisis, serta pengembangan perangkat lunak berstandar profesional.",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const SizedBox(height: 15),

            Card(
              color: Colors.grey[900],
              margin: const EdgeInsets.only(bottom: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: Colors.orange.withOpacity(0.3), width: 1),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.visibility, color: Colors.orange),
                        SizedBox(width: 8),
                        Text(
                          "VISI",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                    Divider(color: Colors.orange),
                    ListTile(
                      leading: Icon(Icons.remove_red_eye, color: Colors.orange),
                      title: Text(
                        "Mewujudkan lulusan dan karya yang berwawasan global serta unggul dalam teknologi.",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Card(
              color: Colors.grey[900],
              margin: const EdgeInsets.only(bottom: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: Colors.orange.withOpacity(0.3), width: 1),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.flag, color: Colors.orange),
                        SizedBox(width: 8),
                        Text(
                          "MISI",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                    Divider(color: Colors.orange),
                    ListTile(
                      leading: Icon(Icons.check_circle, color: Colors.orange),
                      title: Text(
                        "Menanamkan iman, disiplin, tanggung jawab, dan berkarakter mulia.",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                    Divider(color: Colors.grey),
                    ListTile(
                      leading: Icon(Icons.check_circle, color: Colors.orange),
                      title: Text(
                        "Mengembangkan potensi akademik dan non-akademik secara optimal.",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                    Divider(color: Colors.grey),
                    ListTile(
                      leading: Icon(Icons.check_circle, color: Colors.orange),
                      title: Text(
                        "Menciptakan lingkungan yang aman, nyaman, dan menyenangkan.",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
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
