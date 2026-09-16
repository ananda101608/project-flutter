import 'package:flutter/material.dart';

class TestimoniItem {
  final String nama;
  final String profesi;
  final String layanan;
  final String komentar;
  final int rating;

  TestimoniItem({
    required this.nama,
    required this.profesi,
    required this.layanan,
    required this.komentar,
    this.rating = 5,
  });
}

class TestimoniPage extends StatefulWidget {
  const TestimoniPage({super.key});

  @override
  State<TestimoniPage> createState() => _TestimoniPageState();
}

class _TestimoniPageState extends State<TestimoniPage> {
  // Controller untuk input form
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _profesiController = TextEditingController();
  final TextEditingController _komentarController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  // State untuk form
  String _selectedLayanan = "Pengembangan Web";
  int _selectedRating = 5;

  final List<String> _daftarLayanan = [
    "Pengembangan Web",
    "Jasa Design",
    "Mobile Apps",
    "Bug Bounty",
    "Konsultasi IT",
    "Lainnya",
  ];

  // List data testimoni
  final List<TestimoniItem> _listTestimoni = [
    TestimoniItem(
      nama: "Moses Kevin",
      profesi: "Owner UMKM",
      layanan: "Pengembangan Web",
      komentar:
          "Website profil kafe kami dibuat dengan sangat keren, cepat, dan responsif oleh tim KKS Company! Penjualan kami meningkat drastis.",
      rating: 5,
    ),
    TestimoniItem(
      nama: "Bily Azka",
      profesi: "Manager PT DutsGo",
      layanan: "Jasa Design",
      komentar:
          "Desain UI/UX dan logo yang dibuatkan sangat elegan, profesional, dan benar-benar mencerminkan identitas brand perusahaan kami.",
      rating: 5,
    ),
    TestimoniItem(
      nama: "Bryan Samosir",
      profesi: "Founder Startup",
      layanan: "Mobile Apps",
      komentar:
          "Aplikasi Flutter yang dibangun sangat mulus, responsif di Android & iOS, dan navigasinya sangat nyaman dipakai pengguna.",
      rating: 5,
    ),
    TestimoniItem(
      nama: "Daniel Daviano",
      profesi: "IT Security Officer",
      layanan: "Bug Bounty",
      komentar:
          "Audit keamanan sistem dari tim KKS Company sangat detail dan solutif dalam menemukan celah kerentanan aplikasi kami.",
      rating: 5,
    ),
  ];

  @override
  void dispose() {
    _namaController.dispose();
    _profesiController.dispose();
    _komentarController.dispose();
    super.dispose();
  }

  void _simpanTestimoni() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _listTestimoni.insert(
          0,
          TestimoniItem(
            nama: _namaController.text.trim(),
            profesi: _profesiController.text.trim().isEmpty
                ? "Klien KKS Company"
                : _profesiController.text.trim(),
            layanan: _selectedLayanan,
            komentar: _komentarController.text.trim(),
            rating: _selectedRating,
          ),
        );
      });

      // Reset form
      _namaController.clear();
      _profesiController.clear();
      _komentarController.clear();
      setState(() {
        _selectedLayanan = "Pengembangan Web";
        _selectedRating = 5;
      });

      // Sembunyikan keyboard
      FocusScope.of(context).unfocus();

      // Tampilkan notifikasi snackbar
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Row(
            children: [
              Icon(Icons.check_circle, color: Colors.black),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  "Terima kasih! Testimoni berhasil ditambahkan.",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.orange,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          duration: const Duration(seconds: 3),
        ),
      );
    }
  }

  void _hapusTestimoni(int index) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.grey[900],
        title: const Text(
          "Hapus Testimoni?",
          style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
        ),
        content: Text(
          "Apakah Anda yakin ingin menghapus testimoni dari ${_listTestimoni[index].nama}?",
          style: const TextStyle(color: Colors.white),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Batal", style: TextStyle(color: Colors.grey)),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              setState(() {
                _listTestimoni.removeAt(index);
              });
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Testimoni berhasil dihapus."),
                  backgroundColor: Colors.redAccent,
                  duration: Duration(seconds: 2),
                ),
              );
            },
            child: const Text("Hapus"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Testimoni Klien",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        foregroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ================= FORM INPUT TESTIMONI =================
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: Colors.orange.withOpacity(0.5),
                  width: 1.5,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.orange.withOpacity(0.08),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.rate_review, color: Colors.orange, size: 24),
                        SizedBox(width: 8),
                        Text(
                          "Beri Testimoni Anda",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "Bagikan pengalaman Anda menggunakan layanan KKS Company",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[400],
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Input Nama Lengkap
                    TextFormField(
                      controller: _namaController,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "Nama Lengkap *",
                        labelStyle: const TextStyle(color: Colors.orange),
                        hintText: "Masukkan nama Anda",
                        hintStyle: TextStyle(color: Colors.grey[600]),
                        prefixIcon: const Icon(Icons.person, color: Colors.orange),
                        filled: true,
                        fillColor: Colors.black54,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.orange.withOpacity(0.3),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.orange, width: 2),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.redAccent),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.redAccent, width: 2),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Nama wajib diisi";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 14),

                    // Input Profesi / Perusahaan
                    TextFormField(
                      controller: _profesiController,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "Profesi / Perusahaan",
                        labelStyle: const TextStyle(color: Colors.orange),
                        hintText: "Contoh: Owner UMKM / IT Manager",
                        hintStyle: TextStyle(color: Colors.grey[600]),
                        prefixIcon: const Icon(Icons.work, color: Colors.orange),
                        filled: true,
                        fillColor: Colors.black54,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.orange.withOpacity(0.3),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.orange, width: 2),
                        ),
                      ),
                    ),
                    const SizedBox(height: 14),

                    // Dropdown Layanan yang Digunakan
                    DropdownButtonFormField<String>(
                      value: _selectedLayanan,
                      dropdownColor: Colors.grey[900],
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                      icon: const Icon(Icons.arrow_drop_down, color: Colors.orange),
                      decoration: InputDecoration(
                        labelText: "Layanan yang Digunakan",
                        labelStyle: const TextStyle(color: Colors.orange),
                        prefixIcon: const Icon(Icons.miscellaneous_services, color: Colors.orange),
                        filled: true,
                        fillColor: Colors.black54,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.orange.withOpacity(0.3),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.orange, width: 2),
                        ),
                      ),
                      items: _daftarLayanan.map((String item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(item, style: const TextStyle(color: Colors.white)),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        if (newValue != null) {
                          setState(() {
                            _selectedLayanan = newValue;
                          });
                        }
                      },
                    ),
                    const SizedBox(height: 14),

                    // Rating Bintang Interaktif
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.orange.withOpacity(0.3),
                        ),
                      ),
                      child: Row(
                        children: [
                          const Text(
                            "Rating:",
                            style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Row(
                            children: List.generate(5, (index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedRating = index + 1;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 2),
                                  child: Icon(
                                    index < _selectedRating
                                        ? Icons.star
                                        : Icons.star_border,
                                    color: Colors.orange,
                                    size: 28,
                                  ),
                                ),
                              );
                            }),
                          ),
                          const Spacer(),
                          Text(
                            "$_selectedRating / 5",
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 14),

                    // Input Pesan Testimoni
                    TextFormField(
                      controller: _komentarController,
                      maxLines: 3,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: "Pesan Testimoni *",
                        alignLabelWithHint: true,
                        labelStyle: const TextStyle(color: Colors.orange),
                        hintText: "Tulis ulasan dan pengalaman Anda...",
                        hintStyle: TextStyle(color: Colors.grey[600]),
                        prefixIcon: const Padding(
                          padding: EdgeInsets.only(bottom: 45),
                          child: Icon(Icons.comment, color: Colors.orange),
                        ),
                        filled: true,
                        fillColor: Colors.black54,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.orange.withOpacity(0.3),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.orange, width: 2),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.redAccent),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.redAccent, width: 2),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Pesan testimoni tidak boleh kosong";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 18),

                    // Tombol Kirim Testimoni
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: _simpanTestimoni,
                        icon: const Icon(Icons.send_rounded),
                        label: const Text(
                          "Kirim Testimoni",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 4,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25),

            // ================= HEADER DAFTAR TESTIMONI =================
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Apa Kata Klien Kami",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.orange.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.orange.withOpacity(0.5)),
                  ),
                  child: Text(
                    "${_listTestimoni.length} Testimoni",
                    style: const TextStyle(
                      color: Colors.orange,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(color: Colors.orange),
            const SizedBox(height: 10),

            // ================= LIST TESTIMONI =================
            if (_listTestimoni.isEmpty)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Column(
                  children: [
                    Icon(Icons.chat_bubble_outline, color: Colors.grey, size: 50),
                    SizedBox(height: 10),
                    Text(
                      "Belum ada testimoni.",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Text(
                      "Jadilah yang pertama memberikan testimoni!",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              )
            else
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _listTestimoni.length,
                itemBuilder: (context, index) {
                  final item = _listTestimoni[index];
                  return Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: Colors.orange.withOpacity(0.3),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Baris atas: Icon kutipan & Bintang Rating
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              Icons.format_quote,
                              color: Colors.orange,
                              size: 32,
                            ),
                            Row(
                              children: [
                                Row(
                                  children: List.generate(5, (starIndex) {
                                    return Icon(
                                      starIndex < item.rating
                                          ? Icons.star
                                          : Icons.star_border,
                                      color: Colors.orange,
                                      size: 16,
                                    );
                                  }),
                                ),
                                const SizedBox(width: 8),
                                InkWell(
                                  onTap: () => _hapusTestimoni(index),
                                  borderRadius: BorderRadius.circular(20),
                                  child: const Padding(
                                    padding: EdgeInsets.all(4),
                                    child: Icon(
                                      Icons.delete_outline,
                                      color: Colors.grey,
                                      size: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),

                        // Isi Komentar Testimoni
                        Text(
                          "\"${item.komentar}\"",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                            height: 1.4,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Divider(color: Colors.grey),
                        const SizedBox(height: 8),

                        // Informasi Pengguna & Badge Layanan
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.orange,
                              child: Text(
                                item.nama.isNotEmpty
                                    ? item.nama[0].toUpperCase()
                                    : "U",
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item.nama,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    item.profesi,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.orange.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Colors.orange.withOpacity(0.4),
                                ),
                              ),
                              child: Text(
                                item.layanan,
                                style: const TextStyle(
                                  color: Colors.orange,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
