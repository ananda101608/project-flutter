import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMePage extends StatelessWidget {
  const ContactMePage({super.key});

  // Fungsi membuka Instagram
  Future<void> _openInstagram() async {
    final Uri url = Uri.parse("https://www.instagram.com/nandarasyy");
    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      );
    }
  }

  // Fungsi membuka WhatsApp
  Future<void> _openWhatsApp() async {
    final Uri url = Uri.parse("https://wa.me/62888888888888");
    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      );
    }
  }

  // Fungsi membuka Email
  Future<void> _openEmail() async {
    final Uri url = Uri.parse("mailto:anandaros64@gmail.com");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }

  // Fungsi membuka GitHub
  Future<void> _openGithub() async {
    final Uri url = Uri.parse("https://github.com/ananda101608");
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
          "Contact Me",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF023E8A),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Card Header Informasi
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: const Color(0xFF023E8A),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Color(0xFFE0F2FE),
                    child: Icon(
                      Icons.contact_mail,
                      size: 40,
                      color: Color(0xFF023E8A),
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Hubungi Saya",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Silakan hubungi saya melalui kontak di bawah ini untuk kolaborasi atau diskusi project.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white70,
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),

            // Card Kontak
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
                    // WhatsApp
                    ListTile(
                      leading: const Icon(
                        Icons.phone,
                        color: Color(0xFF25D366),
                        size: 28,
                      ),
                      title: const Text(
                        "WhatsApp",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      subtitle: const Text("0888-8888-8888"),
                      trailing: const Icon(
                        Icons.open_in_new,
                        size: 18,
                        color: Colors.grey,
                      ),
                      onTap: _openWhatsApp,
                    ),
                    const Divider(color: Color(0xFFBAE6FD)),

                    // Email (Gmail)
                    ListTile(
                      leading: const Icon(
                        Icons.email,
                        color: Color(0xFFEA4335),
                        size: 28,
                      ),
                      title: const Text(
                        "Email",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      subtitle: const Text("anandaros64@gmail.com"),
                      trailing: const Icon(
                        Icons.open_in_new,
                        size: 18,
                        color: Colors.grey,
                      ),
                      onTap: _openEmail,
                    ),
                    const Divider(color: Color(0xFFBAE6FD)),

                    // Instagram
                    ListTile(
                      leading: const Icon(
                        Icons.camera_alt,
                        color: Color(0xFFE1306C),
                        size: 28,
                      ),
                      title: const Text(
                        "Instagram",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      subtitle: const Text("@nandarasyy"),
                      trailing: const Icon(
                        Icons.open_in_new,
                        size: 18,
                        color: Colors.grey,
                      ),
                      onTap: _openInstagram,
                    ),
                    const Divider(color: Color(0xFFBAE6FD)),

                    // GitHub
                    ListTile(
                      leading: const Icon(
                        Icons.code,
                        color: Color(0xFF0F172A),
                        size: 28,
                      ),
                      title: const Text(
                        "GitHub",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      subtitle: const Text("github.com/ananda101608"),
                      trailing: const Icon(
                        Icons.open_in_new,
                        size: 18,
                        color: Colors.grey,
                      ),
                      onTap: _openGithub,
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