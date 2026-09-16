import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        title: const Text(
          'Portofolio Ananda',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF0F172A),
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 2,
      ),
      drawer: const CustomDrawer(currentPage: 'beranda'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Hero Card Sambutan
            _buildHeroCard(),

            const SizedBox(height: 24),

            // 2. Judul Bagian Menu
            const Text(
              'Jelajahi Portofolio',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0F172A),
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Klik salah satu tombol di bawah untuk melihat detail halaman:',
              style: TextStyle(
                fontSize: 13,
                color: Color(0xFF64748B),
              ),
            ),

            const SizedBox(height: 16),

            // 3. Tombol-tombol navigasi ke halaman lain
            _buildNavButton(
              context: context,
              icon: Icons.person_rounded,
              iconColor: const Color(0xFF2563EB), // Blue
              iconBgColor: const Color(0xFFDBEAFE),
              title: 'Profile Saya',
              description: 'Tentang saya, latar belakang pendidikan & minat',
              routeName: '/profile',
            ),

            const SizedBox(height: 12),

            _buildNavButton(
              context: context,
              icon: Icons.psychology_rounded,
              iconColor: const Color(0xFF0D9488), // Teal
              iconBgColor: const Color(0xFFCCFBF1),
              title: 'Skill & Keahlian',
              description: 'Bahasa pemrograman, framework Flutter & tools',
              routeName: '/skill',
            ),

            const SizedBox(height: 12),

            _buildNavButton(
              context: context,
              icon: Icons.work_rounded,
              iconColor: const Color(0xFFEA580C), // Orange
              iconBgColor: const Color(0xFFFFEDD5),
              title: 'Project Portofolio',
              description: 'Koleksi aplikasi yang telah saya kembangkan',
              routeName: '/project',
            ),

            const SizedBox(height: 12),

            _buildNavButton(
              context: context,
              icon: Icons.contact_mail_rounded,
              iconColor: const Color(0xFF7C3AED), // Purple
              iconBgColor: const Color(0xFFF3E8FF),
              title: 'Contact Me',
              description: 'Hubungi saya via WhatsApp, Instagram & GitHub',
              routeName: '/contactme',
            ),

            const SizedBox(height: 24),

            // 4. Kartu Ringkasan Singkat
            _buildQuickInfoCard(),
          ],
        ),
      ),
    );
  }

  // Widget Hero Banner
  Widget _buildHeroCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFF0F172A), // Slate 900
            Color(0xFF1E3A8A), // Blue 900
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF0F172A).withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xFF38BDF8), width: 2.5),
            ),
            child: const CircleAvatar(
              radius: 40,
              backgroundColor: Color(0xFF1E293B),
              child: Icon(
                Icons.person,
                size: 50,
                color: Color(0xFF38BDF8),
              ),
            ),
          ),
          const SizedBox(height: 14),
          const Text(
            'Halo, Saya Ananda Rachmatu 👋',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 6),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: const Color(0xFF38BDF8).withOpacity(0.15),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0xFF38BDF8).withOpacity(0.4),
              ),
            ),
            child: const Text(
              '📱 Junior Flutter & Mobile Developer',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color(0xFF38BDF8),
              ),
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Siswa Rekayasa Perangkat Lunak (RPL) di SMKN 64 Jakarta. Senang membangun aplikasi mobile yang fungsional, bersih, dan bermanfaat.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
              color: Color(0xFFCBD5E1),
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  // Widget Tombol Navigasi Kartu
  Widget _buildNavButton({
    required BuildContext context,
    required IconData icon,
    required Color iconColor,
    required Color iconBgColor,
    required String title,
    required String description,
    required String routeName,
  }) {
    return Card(
      elevation: 1,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: const BorderSide(color: Color(0xFFE2E8F0)),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: () {
          Navigator.pushNamed(context, routeName);
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: iconBgColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(icon, color: iconColor, size: 26),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0F172A),
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF64748B),
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
                color: Color(0xFF94A3B8),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget Ringkasan Singkat
  Widget _buildQuickInfoCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xFFF1F5F9),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE2E8F0)),
      ),
      child: const Row(
        children: [
          Icon(Icons.info_outline_rounded, color: Color(0xFF475569), size: 20),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              'Gunakan icon garis tiga (≡) di pojok kiri atas untuk membuka Menu Drawer kapan saja.',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF475569),
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}