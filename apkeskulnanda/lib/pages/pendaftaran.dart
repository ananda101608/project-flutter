import 'package:flutter/material.dart';
import 'hasildaftar.dart';

class Pendaftaran extends StatefulWidget {
  const Pendaftaran({super.key});

  @override
  State<Pendaftaran> createState() => _PendaftaranState();
}

class _PendaftaranState extends State<Pendaftaran> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController namaController = TextEditingController();
  final TextEditingController nisController = TextEditingController();
  final TextEditingController hpController = TextEditingController();

  String? kelasDipilih;
  String? jenisKelamin;

  // Pilihan Ekstrakurikuler spesifik sesuai Homepage
  // 1. Olahraga
  bool eskulFutsal = false;
  bool eskulBasket = false;
  bool eskulTaekwondo = false;
  bool eskulSilat = false;
  // 2. Seni & Musik
  bool eskulTari = false;
  // 3. Teknologi
  bool eskulRobotik = false;
  // 4. Organisasi
  bool eskulPramuka = false;
  bool eskulPmr = false;
  bool eskulPaskibra = false;

  void simpanPendaftaran() {
    // Validasi form input
    if (!_formKey.currentState!.validate()) {
      return;
    }

    // Validasi jenis kelamin
    if (jenisKelamin == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Pilihlah jenis kelamin terlebih dahulu!'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    // Mengumpulkan eskul yang dicentang
    List<String> eskulTerpilih = [];
    if (eskulFutsal) eskulTerpilih.add('Futsal');
    if (eskulBasket) eskulTerpilih.add('Basket');
    if (eskulTaekwondo) eskulTerpilih.add('Taekwondo');
    if (eskulSilat) eskulTerpilih.add('Silat');
    if (eskulTari) eskulTerpilih.add('Tari Tradisional');
    if (eskulRobotik) eskulTerpilih.add('Robotik');
    if (eskulPramuka) eskulTerpilih.add('Pramuka');
    if (eskulPmr) eskulTerpilih.add('PMR');
    if (eskulPaskibra) eskulTerpilih.add('Paskibra');

    // Validasi minimal 1 eskul dipilih
    if (eskulTerpilih.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Pilihlah minimal 1 ekstrakurikuler!'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    // Menyimpan data langsung ke variabel Hasildaftar (tanpa List & Map)
    Hasildaftar.nama = namaController.text.trim();
    Hasildaftar.nis = nisController.text.trim();
    Hasildaftar.kelas = kelasDipilih ?? '-';
    Hasildaftar.gender = jenisKelamin ?? '-';
    Hasildaftar.hp = hpController.text.trim();
    Hasildaftar.eskul = eskulTerpilih.join(', ');

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Pendaftaran berhasil disimpan!'),
        backgroundColor: Color(0xFF166534),
      ),
    );

    // Buka halaman hasil pendaftaran
    Navigator.pushNamed(context, '/hasildaftar');
  }

  void resetForm() {
    setState(() {
      namaController.clear();
      nisController.clear();
      hpController.clear();
      kelasDipilih = null;
      jenisKelamin = null;
      eskulFutsal = false;
      eskulBasket = false;
      eskulTaekwondo = false;
      eskulSilat = false;
      eskulTari = false;
      eskulRobotik = false;
      eskulPramuka = false;
      eskulPmr = false;
      eskulPaskibra = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4FBF7),
      appBar: AppBar(
        title: const Text(
          'Formulir Pendaftaran',
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
              },
            ),
            ListTile(
              leading: const Icon(Icons.analytics_rounded, color: Color(0xFF166534)),
              title: const Text('Hasil Pendaftaran', style: TextStyle(fontWeight: FontWeight.w600)),
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
            Card(
              elevation: 2,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          'Isi Data Pendaftaran',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0F172A),
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      const Center(
                        child: Text(
                          'Lengkapi data diri dan pilih eskul yang diminati',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFF475569),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // 1. Input Nama
                      TextFormField(
                        controller: namaController,
                        decoration: const InputDecoration(
                          labelText: 'Nama Lengkap',
                          hintText: 'Masukkan nama lengkap',
                          prefixIcon: Icon(Icons.person, color: Color(0xFF166534)),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Nama tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),

                      // 2. Input NIS
                      TextFormField(
                        controller: nisController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'NIS (Nomor Induk Siswa)',
                          hintText: 'Masukkan NIS',
                          prefixIcon: Icon(Icons.badge, color: Color(0xFF166534)),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'NIS tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),

                      // 3. Dropdown Kelas
                      DropdownButtonFormField<String>(
                        value: kelasDipilih,
                        decoration: const InputDecoration(
                          labelText: 'Kelas',
                          hintText: 'Pilih kelas',
                          prefixIcon: Icon(Icons.school, color: Color(0xFF166534)),
                          border: OutlineInputBorder(),
                        ),
                        items: const [
                          DropdownMenuItem(
                            value: 'X RPL 1',
                            child: Text('X RPL 1'),
                          ),
                          DropdownMenuItem(
                            value: 'X RPL 2',
                            child: Text('X RPL 2'),
                          ),
                          DropdownMenuItem(
                            value: 'XI RPL 1',
                            child: Text('XI RPL 1'),
                          ),
                          DropdownMenuItem(
                            value: 'XI RPL 2',
                            child: Text('XI RPL 2'),
                          ),
                          DropdownMenuItem(
                            value: 'XII RPL 1',
                            child: Text('XII RPL 1'),
                          ),
                          DropdownMenuItem(
                            value: 'XII RPL 2',
                            child: Text('XII RPL 2'),
                          ),
                          DropdownMenuItem(
                            value: 'Kelas 10 1 DKV',
                            child: Text('Kelas 10 1 DKV'),
                          ),
                          DropdownMenuItem(
                            value: 'Kelas 11 2',
                            child: Text('Kelas 11 2'),
                          ),
                          DropdownMenuItem(
                            value: 'Kelas 12 1',
                            child: Text('Kelas 12 1'),
                          ),
                        ],
                        onChanged: (String? value) {
                          setState(() {
                            kelasDipilih = value;
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Kelas harus dipilih';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),

                      // 4. Jenis Kelamin
                      const Text(
                        'Jenis Kelamin',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0F172A),
                        ),
                      ),
                      RadioListTile<String>(
                        title: const Text('Laki-Laki'),
                        value: 'Laki-Laki',
                        groupValue: jenisKelamin,
                        activeColor: const Color(0xFF166534),
                        contentPadding: EdgeInsets.zero,
                        onChanged: (String? value) {
                          setState(() {
                            jenisKelamin = value;
                          });
                        },
                      ),
                      RadioListTile<String>(
                        title: const Text('Perempuan'),
                        value: 'Perempuan',
                        groupValue: jenisKelamin,
                        activeColor: const Color(0xFF166534),
                        contentPadding: EdgeInsets.zero,
                        onChanged: (String? value) {
                          setState(() {
                            jenisKelamin = value;
                          });
                        },
                      ),
                      const SizedBox(height: 16),

                      // 5.No HP
                      TextFormField(
                        controller: hpController,
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          labelText: 'Nomor HP / WhatsApp',
                          hintText: 'Masukkan nomor HP',
                          prefixIcon: Icon(Icons.phone, color: Color(0xFF166534)),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Nomor HP tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),

                      // 6. Checkbox Pilihan Ekstrakurikuler
                      const Text(
                        'Pilih Ekstrakurikuler (Bisa lebih dari 1):',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF0F172A),
                        ),
                      ),
                      const SizedBox(height: 8),

                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // 1. Olahraga
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              color: const Color(0xFFDCFCE7),
                              child: const Text(
                                'Olahraga',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF166534),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            CheckboxListTile(
                              title: const Text('Futsal'),
                              value: eskulFutsal,
                              activeColor: const Color(0xFF166534),
                              dense: true,
                              onChanged: (bool? value) {
                                setState(() {
                                  eskulFutsal = value ?? false;
                                });
                              },
                            ),
                            CheckboxListTile(
                              title: const Text('Basket'),
                              value: eskulBasket,
                              activeColor: const Color(0xFF166534),
                              dense: true,
                              onChanged: (bool? value) {
                                setState(() {
                                  eskulBasket = value ?? false;
                                });
                              },
                            ),
                            CheckboxListTile(
                              title: const Text('Taekwondo'),
                              value: eskulTaekwondo,
                              activeColor: const Color(0xFF166534),
                              dense: true,
                              onChanged: (bool? value) {
                                setState(() {
                                  eskulTaekwondo = value ?? false;
                                });
                              },
                            ),
                            CheckboxListTile(
                              title: const Text('Silat'),
                              value: eskulSilat,
                              activeColor: const Color(0xFF166534),
                              dense: true,
                              onChanged: (bool? value) {
                                setState(() {
                                  eskulSilat = value ?? false;
                                });
                              },
                            ),

                            // 2. Seni & Musik
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              color: const Color(0xFFDCFCE7),
                              child: const Text(
                                'Seni & Musik',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF166534),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            CheckboxListTile(
                              title: const Text('Tari Tradisional'),
                              value: eskulTari,
                              activeColor: const Color(0xFF166534),
                              dense: true,
                              onChanged: (bool? value) {
                                setState(() {
                                  eskulTari = value ?? false;
                                });
                              },
                            ),

                            // 3. Teknologi
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              color: const Color(0xFFDCFCE7),
                              child: const Text(
                                'Teknologi',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF166534),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            CheckboxListTile(
                              title: const Text('Robotik'),
                              value: eskulRobotik,
                              activeColor: const Color(0xFF166534),
                              dense: true,
                              onChanged: (bool? value) {
                                setState(() {
                                  eskulRobotik = value ?? false;
                                });
                              },
                            ),

                            // 4. Organisasi
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              color: const Color(0xFFDCFCE7),
                              child: const Text(
                                'Organisasi',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF166534),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            CheckboxListTile(
                              title: const Text('Pramuka'),
                              value: eskulPramuka,
                              activeColor: const Color(0xFF166534),
                              dense: true,
                              onChanged: (bool? value) {
                                setState(() {
                                  eskulPramuka = value ?? false;
                                });
                              },
                            ),
                            CheckboxListTile(
                              title: const Text('PMR'),
                              value: eskulPmr,
                              activeColor: const Color(0xFF166534),
                              dense: true,
                              onChanged: (bool? value) {
                                setState(() {
                                  eskulPmr = value ?? false;
                                });
                              },
                            ),
                            CheckboxListTile(
                              title: const Text('Paskibra'),
                              value: eskulPaskibra,
                              activeColor: const Color(0xFF166534),
                              dense: true,
                              onChanged: (bool? value) {
                                setState(() {
                                  eskulPaskibra = value ?? false;
                                });
                              },
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 24),

                      // Tombol Simpan & Reset
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: ElevatedButton.icon(
                          onPressed: simpanPendaftaran,
                          icon: const Icon(Icons.save),
                          label: const Text(
                            'Daftar Sekarang',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF166534),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: OutlinedButton.icon(
                          onPressed: resetForm,
                          icon: const Icon(Icons.refresh),
                          label: const Text('Reset Formulir'),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: const Color(0xFF166534),
                            side: const BorderSide(color: Color(0xFF166534)),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}