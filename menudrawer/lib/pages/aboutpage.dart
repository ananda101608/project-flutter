import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F9FF),
      appBar: AppBar(
        title: const Text(
          'Tentang Ocean Trip',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF023E8A),
        foregroundColor: Colors.white,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Hero Gradient Banner
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF023E8A),
                    Color(0xFF0077B6),
                  ],   
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.scuba_diving,
                      size: 42,
                      color: Color(0xFF023E8A),
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Ocean Trip Adventure',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Jasa Wisata & Eksplorasi Bawah Laut Profesional',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFFBAE6FD),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // 2. Statistik & Pencapaian (Stats Bar)
            const Row(
              children: [
                Expanded(
                  child: Card(
                    elevation: 1,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Column(
                        children: [
                          Text(
                            '1.500+',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF023E8A),
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Wisatawan',
                            style: TextStyle(fontSize: 11, color: Color(0xFF64748B)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Card(
                    elevation: 1,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Column(
                        children: [
                          Text(
                            '12+',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF023E8A),
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Spot Laut',
                            style: TextStyle(fontSize: 11, color: Color(0xFF64748B)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Card(
                    elevation: 1,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Column(
                        children: [
                          Text(
                            '4.9 ⭐',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF023E8A),
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Rating Ulasan',
                            style: TextStyle(fontSize: 11, color: Color(0xFF64748B)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // 3. Sekilas Tentang Kami
            const Text(
              'Sekilas Tentang Kami',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0F172A),
              ),
            ),
            const SizedBox(height: 6),
            const Text(
              'Ocean Trip Adventure adalah penyedia layanan wisata bahari dan trip bawah laut terpercaya. Kami menghadirkan pengalaman menyelam terbaik mulai dari snorkeling santai, scuba diving, hingga sea safari untuk menikmati keindahan terumbu karang dan keanekaragaman hayati laut Indonesia.',
              style: TextStyle(
                color: Color(0xFF475569),
                fontSize: 14,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 20),

            // 4. Mengapa Memilih Kami (Why Choose Us)
            const Text(
              'Mengapa Memilih Kami?',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0F172A),
              ),
            ),
            const SizedBox(height: 8),

            const Card(
              color: Colors.white,
              elevation: 2,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.shield_outlined, color: Color(0xFF023E8A), size: 28),
                      title: Text(
                        'Keamanan & Standar Utama',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      subtitle: Text(
                        'Peralatan diving berstandar internasional dan asuransi selama trip.',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    Divider(color: Color(0xFFBAE6FD)),
                    ListTile(
                      leading: Icon(Icons.scuba_diving, color: Color(0xFF023E8A), size: 28),
                      title: Text(
                        'Instruktur & Divemaster Bersertifikat',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      subtitle: Text(
                        'Didampingi pemandu berpengalaman dan ramah pemula.',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    Divider(color: Color(0xFFBAE6FD)),
                    ListTile(
                      leading: Icon(Icons.camera_alt_outlined, color: Color(0xFF023E8A), size: 28),
                      title: Text(
                        'Gratis Dokumentasi Underwater',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      subtitle: Text(
                        'Mendapatkan foto dan video HD di bawah air tanpa biaya tambahan.',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // 5. Destinasi & Spot Favorit
            const Text(
              'Destinasi Spot Favorit',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0F172A),
              ),
            ),
            const SizedBox(height: 8),

            const Card(
              color: Colors.white,
              elevation: 2,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.location_on, color: Color(0xFF0077B6)),
                      title: Text(
                        'Kepulauan Seribu (Spot Karang & Penyu)',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                      subtitle: Text('Trip dekat Jakarta, cocok untuk one day trip.'),
                    ),
                    Divider(color: Color(0xFFBAE6FD)),
                    ListTile(
                      leading: Icon(Icons.location_on, color: Color(0xFF0077B6)),
                      title: Text(
                        'Labuan Bajo (Manta Point & Pink Beach)',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                      subtitle: Text('Petualangan menyelam kelas dunia bersama ikan pari manta.'),
                    ),
                    Divider(color: Color(0xFFBAE6FD)),
                    ListTile(
                      leading: Icon(Icons.location_on, color: Color(0xFF0077B6)),
                      title: Text(
                        'Karimunjawa (Taman Nasional Laut)',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                      subtitle: Text('Keindahan terumbu karang alami dan hiu jinak.'),
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