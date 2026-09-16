import 'package:flutter/material.dart';

class Hasildaftar extends StatefulWidget {
  const Hasildaftar({super.key});

  // Data hasil pendaftaran siswa
  static String nama = '';
  static String nis = '';
  static String kelas = '';
  static String gender = '';
  static String hp = '';
  static String eskul = '';

  @override
  State<Hasildaftar> createState() => _HasildaftarState();
}

class _HasildaftarState extends State<Hasildaftar> {
  @override
  Widget build(BuildContext context) {
    String nama = Hasildaftar.nama;
    String nis = Hasildaftar.nis;
    String kelas = Hasildaftar.kelas;
    String gender = Hasildaftar.gender;
    String hp = Hasildaftar.hp;
    String eskul = Hasildaftar.eskul;

    Widget isiHalaman;

    // Cek jika data pendaftaran masih kosong
    if (nama.isEmpty) {
      isiHalaman = const Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Card(
            elevation: 2,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 36,
                    backgroundColor: Color(0xFFDCFCE7),
                    child: Icon(
                      Icons.info_outline,
                      size: 40,
                      color: Color(0xFF166534),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Belum Ada Data Pendaftaran',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0F172A),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Silakan mengisi formulir pendaftaran terlebih dahulu untuk melihat hasil data di sini.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF475569),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    } else {
      // Jika data sudah ada, tampilkan bukti kartu pendaftaran
      isiHalaman = SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Data Hasil Pendaftaran',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0F172A),
              ),
            ),
            const SizedBox(height: 12),
            Card(
              elevation: 2,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header Kartu
                    const Row(
                      children: [
                        CircleAvatar(
                          radius: 14,
                          backgroundColor: Color(0xFFDCFCE7),
                          child: Icon(
                            Icons.check,
                            size: 16,
                            color: Color(0xFF166534),
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Bukti Pendaftaran Siswa',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xFF166534),
                          ),
                        ),
                      ],
                    ),
                    const Divider(height: 20),

                    // Rincian Data Siswa
                    ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(Icons.person, color: Color(0xFF166534)),
                      title: const Text('Nama Lengkap'),
                      subtitle: Text(
                        nama,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xFF0F172A),
                        ),
                      ),
                    ),
                    ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(Icons.badge, color: Color(0xFF166534)),
                      title: const Text('NIS'),
                      subtitle: Text(
                        nis,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xFF0F172A),
                        ),
                      ),
                    ),
                    ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(Icons.school, color: Color(0xFF166534)),
                      title: const Text('Kelas'),
                      subtitle: Text(
                        kelas,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xFF0F172A),
                        ),
                      ),
                    ),
                    ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(Icons.wc, color: Color(0xFF166534)),
                      title: const Text('Jenis Kelamin'),
                      subtitle: Text(
                        gender,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xFF0F172A),
                        ),
                      ),
                    ),
                    ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(Icons.phone, color: Color(0xFF166534)),
                      title: const Text('Nomor HP'),
                      subtitle: Text(
                        hp,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xFF0F172A),
                        ),
                      ),
                    ),
                    ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(Icons.sports, color: Color(0xFF166534)),
                      title: const Text('Ekstrakurikuler yang Dipilih'),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text(
                          eskul,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color(0xFF166534),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF4FBF7),
      appBar: AppBar(
        title: const Text(
          'Hasil Pendaftaran',
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
            ListTile(
              leading: const Icon(Icons.home, color: Color(0xFF166534)),
              title: const Text('Beranda', style: TextStyle(fontWeight: FontWeight.w600)),
              onTap: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
            ),
            ListTile(
              leading: const Icon(Icons.app_registration, color: Color(0xFF166534)),
              title: const Text('Pendaftaran', style: TextStyle(fontWeight: FontWeight.w600)),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/pendaftaran');
              },
            ),
            ListTile(
              leading: const Icon(Icons.analytics_rounded, color: Color(0xFF166534)),
              title: const Text('Hasil Pendaftaran', style: TextStyle(fontWeight: FontWeight.w600)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: isiHalaman,
    );
  }
}