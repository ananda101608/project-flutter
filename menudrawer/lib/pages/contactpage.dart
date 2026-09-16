import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  Future<void> _openIg() async {
    final Uri url = Uri.parse("https://www.instagram.com/nandarasyy");
    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      );
    }
  }
  

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
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    const ListTile(
                      leading: Icon(Icons.location_on, color: Color(0xFF023E8A)),
                      title: Text(
                        'Basecamp & Lokasi Trip',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      subtitle: Text('Ancol, Jakarta / Labuan Bajo'),
                    ),
                    const Divider(color: Color(0xFFBAE6FD)),
                    const ListTile(
                      leading: Icon(Icons.phone, color: Color(0xFF0077B6)),
                      title: Text(
                        'WhatsApp',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      subtitle: Text('08888888888888'),
                    ),
                    const Divider(color: Color(0xFFBAE6FD)),
                    const ListTile(
                      leading: Icon(Icons.email_outlined, color: Color(0xFF023E8A)),
                      title: Text(
                        'Email Resmi',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      subtitle: Text('info@oceantripadventure.com'),
                    ),
                    const Divider(color: Color(0xFFBAE6FD)),
                    ListTile(
                      leading: const Icon(Icons.camera_alt_outlined, color: Color(0xFF0077B6)),
                      title: const Text(
                        'Instagram',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      subtitle: const Text('@nandarasyy'),
                      onTap: _openIg,
                    ),
                    const Divider(color: Color(0xFFBAE6FD)),
                    const ListTile(
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