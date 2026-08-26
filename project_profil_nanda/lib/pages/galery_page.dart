import 'package:flutter/material.dart';

class GaleryPage extends StatelessWidget {
  const GaleryPage({super.key});

  final List<Map<String, String>> galeri = const [
    {
      "judul": "Gedung Perusahaan",
      "gambar": "assets/images/gedung.jpg",
    },
    {
      "judul": "Fasilitas 1",
      "gambar": "assets/images/fasilitas1.jpg",
    },
    {
      "judul": "Fasilitas 2",
      "gambar": "assets/images/fasilitas2.jpg",
    },
    {
      "judul": "Ruang Meeting",
      "gambar": "assets/images/meeting.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Galery Perusahaan",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        foregroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: GridView.builder(
          itemCount: galeri.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 220,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
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
                    child: Text(
                      galeri[index]["judul"]!,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
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
