import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F9FF),
      appBar: AppBar(
        title: const Text(
          'Ananda Ocean Trip Adventure',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF023E8A), 
        foregroundColor: Colors.white,
        elevation: 1,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Header Drawer 
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF023E8A),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Menu',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            // Beranda
            ListTile(
              leading: const Icon(Icons.home, color: Color(0xFF023E8A)),
              title: const Text(
                'Beranda',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            // About
            ListTile(
              leading: const Icon(Icons.info_outline, color: Color(0xFF023E8A)),
              title: const Text(
                'About',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/about');
              },
            ),
            // Galeri
            ListTile(
              leading: const Icon(Icons.photo_library_outlined, color: Color(0xFF023E8A)),
              title: const Text(
                'Galeri',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/galeri');
              },
            ),
            // Contact
            ListTile(
              leading: const Icon(Icons.phone_outlined, color: Color(0xFF023E8A)),
              title: const Text(
                'Contact',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/contact');
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Jasa Trip Bawah Laut
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 2,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 45,
                        backgroundColor: Color(0xFFE0F2FE),
                        child: Icon(
                          Icons.scuba_diving,
                          size: 55,
                          color: Color(0xFF023E8A),
                        ),
                      ),
                      SizedBox(height: 14),
                      Text(
                        'Jelajahi Bawah Laut 🌊',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0F172A),
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Paket Wisata & Diving Profesional',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF0077B6),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Nikmati pengalaman tak terlupakan menjelajahi keindahan terumbu karang, bertemu biota laut eksotis, dan menyelam aman bersama instruktur bersertifikat.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF475569),
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            //Layanan 
            const Text(
              'Fasilitas & Keunggulan',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0F172A),
              ),
            ),
            const SizedBox(height: 10),

            const SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 2,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.waves, color: Color(0xFF023E8A)),
                          SizedBox(width: 12),
                          Text(
                            'Snorkeling & Scuba Diving Terbimbing',
                            style: TextStyle(fontSize: 14, color: Color(0xFF334155)),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.camera_alt_outlined, color: Color(0xFF023E8A)),
                          SizedBox(width: 12),
                          Text(
                            'Gratis Dokumentasi Foto Underwater',
                            style: TextStyle(fontSize: 14, color: Color(0xFF334155)),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.verified_user_outlined, color: Color(0xFF023E8A)),
                          SizedBox(width: 12),
                          Text(
                            'Alat Selam Lengkap & Standar Keamanan',
                            style: TextStyle(fontSize: 14, color: Color(0xFF334155)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            //Paket
            const Text(
              'Paket Trip Pilihan',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0F172A),
              ),
            ),
            const SizedBox(height: 10),

            const Row(
              children: [
                // Paket 1
                Expanded(
                  child: Card(
                    elevation: 1,
                    color: Color(0xFFE0F2FE),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Column(
                        children: [
                          Icon(Icons.water_drop_outlined, color: Color(0xFF0369A1), size: 28),
                          SizedBox(height: 8),
                          Text(
                            'Snorkeling',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Color(0xFF0369A1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),

                // Paket 2
                Expanded(
                  child: Card(
                    elevation: 1,
                    color: Color(0xFFCCFBF1),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Column(
                        children: [
                          Icon(Icons.scuba_diving, color: Color(0xFF0F766E), size: 28),
                          SizedBox(height: 8),
                          Text(
                            'Deep Diving',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Color(0xFF0F766E),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),

                //Paket 3
                Expanded(
                  child: Card(
                    elevation: 1,
                    color: Color(0xFFE0E7FF),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Column(
                        children: [
                          Icon(Icons.sailing_outlined, color: Color(0xFF4338CA), size: 28),
                          SizedBox(height: 8),
                          Text(
                            'Sea Safari',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Color(0xFF4338CA),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}