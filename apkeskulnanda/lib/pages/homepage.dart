import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4FBF7),
      appBar: AppBar(
        title: const Text(
          'Pendaftaran Ekstrakurikuler',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF166534),
        foregroundColor: Colors.white,
        elevation: 1,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFF166534),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/logo64.png',
                    width: 48,
                    height: 48,
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'SMKN 64',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Aplikasi Ekstrakurikuler',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFFDCFCE7),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Beranda
            ListTile(
              leading: const Icon(Icons.home, color: Color(0xFF166534)),
              title: const Text(
                'Beranda',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            // Pendaftaran
            ListTile(
              leading: const Icon(Icons.app_registration, color: Color(0xFF166534)),
              title: const Text(
                'Pendaftaran',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/pendaftaran');
              },
            ),
            // Hasil Pendaftaran
            ListTile(
              leading: const Icon(Icons.analytics_rounded, color: Color(0xFF166534)),
              title: const Text(
                'Hasil Pendaftaran',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/hasildaftar');
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
            // Kartu Sambutan & Foto SMKN 64
            Card(
              elevation: 2,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  // Foto Gedung SMKN 64 Jakarta
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                    child: Image.asset(
                      'assets/images/smkn64.jpg',
                      width: double.infinity,
                      height: 185,
                      fit: BoxFit.cover,
                    ),
                  ),

                  // Informasi Sambutan
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/logo64.png',
                              width: 26,
                              height: 26,
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              'SMK NEGERI 64 JAKARTA',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: Color(0xFF166534),
                                letterSpacing: 0.5,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Ekstrakurikuler SMKN 64',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0F172A),
                          ),
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          'Kembangkan potensi, minat, dan bakatmu bersama kegiatan ekstrakurikuler unggulan di SMKN 64 Jakarta.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFF475569),
                            height: 1.4,
                          ),
                        ),
                        const SizedBox(height: 14),
                        // Tag Informasi Sekolah
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFFDCFCE7),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Text(
                                'Prestasi',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF166534),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFFFEF3C7),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Text(
                                'Disiplin',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFFB45309),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF3E8FF),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Text(
                                'Kreativitas',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF7E22CE),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Manfaat Ekstrakurikuler
            const Text(
              'Manfaat Mengikuti Ekstrakurikuler',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0F172A),
              ),
            ),
            const SizedBox(height: 10),

            const Row(
              children: [
                // Manfaat 1
                Expanded(
                  child: Card(
                    elevation: 1,
                    color: Color(0xFFDCFCE7),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 14.0),
                      child: Column(
                        children: [
                          Icon(Icons.lightbulb_outline, color: Color(0xFF166534), size: 28),
                          SizedBox(height: 6),
                          Text(
                            'Soft Skill',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Color(0xFF166534),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),

                // Manfaat 2
                Expanded(
                  child: Card(
                    elevation: 1,
                    color: Color(0xFFFEF3C7),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 14.0),
                      child: Column(
                        children: [
                          Icon(Icons.people_alt_outlined, color: Color(0xFFB45309), size: 28),
                          SizedBox(height: 6),
                          Text(
                            'Relasi',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Color(0xFFB45309),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),

                // Manfaat 3
                Expanded(
                  child: Card(
                    elevation: 1,
                    color: Color(0xFFF3E8FF),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 14.0),
                      child: Column(
                        children: [
                          Icon(Icons.emoji_events_outlined, color: Color(0xFF7E22CE), size: 28),
                          SizedBox(height: 6),
                          Text(
                            'Prestasi',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Color(0xFF7E22CE),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Pilihan Ekstrakurikuler
            const Text(
              'Pilihan Ekstrakurikuler',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0F172A),
              ),
            ),
            const SizedBox(height: 10),

            Card(
              elevation: 1,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(0xFFFFEDD5),
                        child: Icon(Icons.sports_soccer, color: Color(0xFFC2410C)),
                      ),
                      title: Text(
                        'Olahraga',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Futsal, Basket, Taekwondo, Silat'),
                    ),
                    Divider(height: 1),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(0xFFF3E8FF),
                        child: Icon(Icons.music_note, color: Color(0xFF7E22CE)),
                      ),
                      title: Text(
                        'Seni & Musik',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Tari Tradisional'),
                    ),
                    Divider(height: 1),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(0xFFDCFCE7),
                        child: Icon(Icons.computer, color: Color(0xFF166534)),
                      ),
                      title: Text(
                        'Teknologi',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Robotik'),
                    ),
                    Divider(height: 1),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(0xFFFEF3C7),
                        child: Icon(Icons.flag_outlined, color: Color(0xFFB45309)),
                      ),
                      title: Text(
                        'Organisasi',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('Pramuka, PMR, Paskibra'),
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