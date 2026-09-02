import 'package:flutter/material.dart';

class GaleriPage extends StatelessWidget {
  const GaleriPage({super.key});

  final List<Map<String, String>> galeri = const [
    {
      "judul": "Paket Snorkeling",
      "gambar": "assets/images/snorkeling.jpg",
      "deskripsi": "Menikmati terumbu karang dangkal dan ikan tropis",
    },
    {
      "judul": "Scuba Diving",
      "gambar": "assets/images/scuba.jpg",
      "deskripsi": "Eksplorasi kedalaman laut bersama pemandu ahli",
    },
    {
      "judul": "Deep Sea Tour",
      "gambar": "assets/images/deep.jpg",
      "deskripsi": "Petualangan melihat biota laut langka dan gua laut",
    },
    {
      "judul": "Wisata Bahari",
      "gambar": "assets/images/wisata.png",
      "deskripsi": "Dokumentasi keindahan alam pesisir dan laut biru",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F9FF),
      appBar: AppBar(
        title: const Text(
          'Galeri Bawah Laut',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF023E8A),
        foregroundColor: Colors.white,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: GridView.builder(
          itemCount: galeri.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 220,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.72,
          ),
          itemBuilder: (context, index) {
            return Card(
              elevation: 2,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      child: Image.asset(
                        galeri[index]["gambar"]!,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          galeri[index]["judul"]!,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF0F172A),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          galeri[index]["deskripsi"]!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 11,
                            color: Color(0xFF64748B),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}