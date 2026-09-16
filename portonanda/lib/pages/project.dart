import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  // Fungsi untuk membuka link GitHub
  Future<void> _openUrl(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F9FF),
      appBar: AppBar(
        title: const Text(
          "Project Portofolio",
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
            // Header Informasi Project
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
                      Icons.work,
                      size: 40,
                      color: Color(0xFF023E8A),
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Daftar Project Saya",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Kumpulan aplikasi mobile Flutter, website, dan tugas kejuruan RPL yang telah saya kembangkan beserta link kodenya di GitHub.",
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

            // Project 1: Portofolio Nanda (Flutter)
            _buildProjectCard(
              title: "Portofolio Nanda",
              tech: "Flutter • Dart",
              description:
                  "Aplikasi portofolio pribadi dengan navigasi Drawer, integrasi halaman keahlian, showcase project, dan kontak sosial media.",
              icon: Icons.flutter_dash,
              iconColor: const Color(0xFF0284C7),
              iconBgColor: const Color(0xFFE0F2FE),
              githubUrl: "https://github.com/ananda101608/project-flutter",
            ),

            // Project 2: Ocean Trip Adventure
            _buildProjectCard(
              title: "Ocean Trip Adventure",
              tech: "Flutter • Dart • Url Launcher",
              description:
                  "Aplikasi paket wisata diving dan trip eksplorasi bawah laut dengan tema Ocean Blue, navigasi menu drawer, galeri, dan kontak reservasi.",
              icon: Icons.scuba_diving,
              iconColor: const Color(0xFF023E8A),
              iconBgColor: const Color(0xFFBAE6FD),
              githubUrl: "https://github.com/ananda101608/project-scuba",
            ),

            // Project 3: KKS Company Profile
            _buildProjectCard(
              title: "KKS Company Profile",
              tech: "Flutter • Dart • OOP",
              description:
                  "Aplikasi profil perusahaan IT bernuansa Dark Theme dengan fitur galeri fasilitas, layanan unggulan, serta form ulasan & testimoni interaktif.",
              icon: Icons.business,
              iconColor: Colors.orange,
              iconBgColor: const Color(0xFFFFEDD5),
              githubUrl: "https://github.com/ananda101608/flutter_profil_perusahaan",
            ),

            // Project 4: Pendaftaran Ekstrakurikuler SMKN 64
            _buildProjectCard(
              title: "Aplikasi Ekstrakurikuler SMKN 64",
              tech: "Flutter • Dart • Form Validation",
              description:
                  "Aplikasi pendaftaran ekstrakurikuler sekolah dengan seleksi multi-eskul, validasi data siswa, dan halaman kartu hasil pendaftaran.",
              icon: Icons.school,
              iconColor: const Color(0xFF166534),
              iconBgColor: const Color(0xFFDCFCE7),
              githubUrl: "https://github.com/ananda101608/project-flutter",
            ),

            // Project 5: Form Data Karyawan
            _buildProjectCard(
              title: "Form Data Karyawan",
              tech: "Flutter • Dart • State Management",
              description:
                  "Aplikasi form input data lengkap dengan validasi teks, dropdown divisi, pilihan radio button gender & status kerja, serta checkbox pernyataan.",
              icon: Icons.assignment,
              iconColor: const Color(0xFF0D9488),
              iconBgColor: const Color(0xFFCCFBF1),
              githubUrl: "https://github.com/ananda101608/project-flutter",
            ),

            // Project 6: Lost and Foundit SMKN 64
            _buildProjectCard(
              title: "Lost and Foundit SMKN 64",
              tech: "Web • HTML • CSS • JavaScript",
              description:
                  "Website sistem informasi untuk mencari dan melaporkan barang hilang di lingkungan sekolah SMK Negeri 64 Jakarta.",
              icon: Icons.search,
              iconColor: const Color(0xFFEA580C),
              iconBgColor: const Color(0xFFFFEDD5),
              githubUrl: "https://github.com/ananda101608/lost-and-foundit",
            ),

            // Project 7: Bootstrap CV
            _buildProjectCard(
              title: "Website CV Bootstrap",
              tech: "HTML5 • CSS3 • Bootstrap",
              description:
                  "Website curriculum vitae digital interaktif dan responsif yang dibangun menggunakan framework CSS Bootstrap.",
              icon: FontAwesomeIcons.bootstrap,
              iconColor: const Color(0xFF7952B3),
              iconBgColor: const Color(0xFFF3E8FF),
              githubUrl: "https://github.com/ananda101608/bootstrap-cv",
            ),

            // Project 8: Sistem Informasi Perpustakaan
            _buildProjectCard(
              title: "Sistem Informasi Perpustakaan",
              tech: "Web • PHP • Database",
              description:
                  "Aplikasi web manajemen perpustakaan sekolah untuk pengelolaan data buku, peminjaman, dan pengembalian siswa.",
              icon: Icons.menu_book,
              iconColor: const Color(0xFF4F46E5),
              iconBgColor: const Color(0xFFEEF2FF),
              githubUrl: "https://github.com/ananda101608/ulangan-pak-krisna-perpus-",
            ),
          ],
        ),
      ),
    );
  }

  // Widget Kartu Project Reusable
  Widget _buildProjectCard({
    required String title,
    required String tech,
    required String description,
    required IconData icon,
    required Color iconColor,
    required Color iconBgColor,
    required String githubUrl,
  }) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 16),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Bagian Atas: Icon, Judul & Tag Teknologi
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: iconBgColor,
                  child: Icon(icon, color: iconColor, size: 24),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0F172A),
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        tech,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Color(0xFF64748B),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            // Deskripsi Project
            Text(
              description,
              style: const TextStyle(
                fontSize: 13,
                color: Color(0xFF334155),
                height: 1.4,
              ),
            ),

            const SizedBox(height: 14),

            // Tombol Lihat di GitHub
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () => _openUrl(githubUrl),
                icon: const Icon(
                  FontAwesomeIcons.github,
                  size: 18,
                ),
                label: const Text(
                  "Lihat di GitHub",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF023E8A),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}