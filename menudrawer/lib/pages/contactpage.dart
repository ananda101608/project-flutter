import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F9FF),
      appBar: AppBar(
        title: const Text(
          'Kontak & Reservasi Trip',
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
          children: [
            //Informasi Kontak
            Card(
              elevation: 2,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.location_on, color: Color(0xFF023E8A)),
                      title: Text(
                        'Basecamp & Lokasi Trip',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      subtitle: Text('Ancol, Jakarta / Labuan Bajo'),
                    ),
                    Divider(color: Color(0xFFBAE6FD)),
                    ListTile(
                      leading: Icon(Icons.phone, color: Color(0xFF0077B6)),
                      title: Text(
                        'WhatsApp',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      subtitle: Text('08888888888888'),
                    ),
                    Divider(color: Color(0xFFBAE6FD)),
                    ListTile(
                      leading: Icon(Icons.email_outlined, color: Color(0xFF023E8A)),
                      title: Text(
                        'Email Resmi',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      subtitle: Text('info@oceantripadventure.com'),
                    ),
                    Divider(color: Color(0xFFBAE6FD)),
                    ListTile(
                      leading: Icon(Icons.camera_alt_outlined, color: Color(0xFF0077B6)),
                      title: Text(
                        'Instagram',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      subtitle: Text('@nandarasyy'),
                    ),
                    Divider(color: Color(0xFFBAE6FD)),
                    ListTile(
                      leading: Icon(Icons.access_time_outlined, color: Color(0xFF023E8A)),
                      title: Text(
                        'Jadwal Keberangkatan Trip',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      subtitle: Text('Setiap Hari Sabtu & Minggu (Open & Private Trip)'),
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