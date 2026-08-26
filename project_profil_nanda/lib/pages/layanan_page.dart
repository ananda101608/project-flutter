import 'package:flutter/material.dart';

class LayananPage extends StatelessWidget {
  const LayananPage({super.key});

  final List<Map<String, String>> galeri = const [
    {
      "judul": "Pengembangan Web",
      "gambar": "assets/images/peng.png",
    },
    {
      "judul": "Bug Bounty",
      "gambar": "assets/images/bug.png",
    },
    {
      "judul": "Jasa Design",
      "gambar": "assets/images/jasa_design.jpg",
    },
    {
      "judul": "Mobile Apps",
      "gambar": "assets/images/mobile.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Layanan Perusahaan",
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
            const Center(
              child: Text(
                "Layanan Unggulan KKS Company",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const Divider(color: Colors.orange),
            const SizedBox(height: 15),

            //Pengembangan Web
            Card(
              color: Colors.grey[900],
              margin: const EdgeInsets.only(bottom: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(
                  color: Colors.orange.withOpacity(0.3),
                  width: 1,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.code, color: Colors.orange),
                        SizedBox(width: 8),
                        Text(
                          "Pengembangan Web",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                    Divider(color: Colors.orange),
                    ListTile(
                      leading: Icon(Icons.check_circle, color: Colors.orange),
                      title: Text(
                        "Pembuatan website company profile, portal web, dan aplikasi berbasis web profesional.",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //Jasa Bug Bounty
            Card(
              color: Colors.grey[900],
              margin: const EdgeInsets.only(bottom: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(
                  color: Colors.orange.withOpacity(0.3),
                  width: 1,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.bug_report, color: Colors.orange),
                        SizedBox(width: 8),
                        Text(
                          "Jasa Bug Bounty",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                    Divider(color: Colors.orange),
                    ListTile(
                      leading: Icon(Icons.check_circle, color: Colors.orange),
                      title: Text(
                        "Layanan pengujian keamanan sistem dan identifikasi celah keamanan pada aplikasi.",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //Jasa Design
            Card(
              color: Colors.grey[900],
              margin: const EdgeInsets.only(bottom: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(
                  color: Colors.orange.withOpacity(0.3),
                  width: 1,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.brush, color: Colors.orange),
                        SizedBox(width: 8),
                        Text(
                          "Jasa Design",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                    Divider(color: Colors.orange),
                    ListTile(
                      leading: Icon(Icons.check_circle, color: Colors.orange),
                      title: Text(
                        "Perancangan desain UI/UX, branding visual, logo, dan media grafis berkualitas.",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //Mobile Apps
            Card(
              color: Colors.grey[900],
              margin: const EdgeInsets.only(bottom: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(
                  color: Colors.orange.withOpacity(0.3),
                  width: 1,
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.phone_android, color: Colors.orange),
                        SizedBox(width: 8),
                        Text(
                          "Mobile Apps",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                    Divider(color: Colors.orange),
                    ListTile(
                      leading: Icon(Icons.check_circle, color: Colors.orange),
                      title: Text(
                        "Pengembangan aplikasi Android & iOS berbasis Flutter yang modern dan responsif.",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 15),
            const Text(
              "Galeri Foto Layanan",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),

            
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
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
                  color: Colors.grey[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(
                      color: Colors.orange.withOpacity(0.3),
                      width: 1,
                    ),
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
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
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
