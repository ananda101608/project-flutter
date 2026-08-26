import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


class ContactPage extends StatelessWidget {
  Future<void> _openInstagram() async{
    final Uri url=Uri.parse(
      "https://www.instagram.com/nandarasyy"
    );
    await launchUrl(url,
    mode: LaunchMode.externalApplication,
    );
  }

  Future<void> _openYoutube() async{
    final Uri url=Uri.parse(
      "https://www.youtube.com/@gongsam_table203"
    );
    await launchUrl(url,
    mode: LaunchMode.externalApplication,
    );
  }
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Contact Page",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        foregroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Card(
                elevation: 5,
                child: Column(
                  children: [
                    const ListTile(
                      leading: Icon(Icons.location_on, color: Color.fromARGB(255, 255, 0, 0)),
                      title: Text("Alamat Perusahaan"),
                      subtitle: Text("Jln Mpok nori"),
                    ),
                    const Divider(
                      color: Colors.orange,
                    ),
                    const ListTile(
                      leading: Icon(Icons.phone, color: Color.fromARGB(255, 0, 153, 255)),
                      title: Text("Nomor Perusahaan"),
                      subtitle: Text("02156564765"),
                    ),
                    const Divider(
                      color: Colors.orange,
                    ),
                    const ListTile(
                      leading: Icon(Icons.email, color: Color.fromARGB(255, 0, 255, 13)),
                      title: Text("Gmail Perusahaan"),
                      subtitle: Text("anandaros64@gmail.com"),
                    ),
                    const Divider(
                      color: Colors.orange,
                    ),
                     ListTile(
                      leading: const Icon(FontAwesomeIcons.instagram, color: Colors.pink,),
                      title: const Text("Instagram"),
                      subtitle: const Text("@nandarasyy"),
                      onTap: _openInstagram,
                    ),
                     const Divider(
                      color: Colors.orange,
                    ),
                     ListTile(
                      leading: const Icon(FontAwesomeIcons.youtube, color: Colors.red,),
                      title: const Text("Youtube"),
                      subtitle: const Text("NandaGemink"),
                      onTap: _openYoutube,
                    ),
                    const Divider(
                      color: Colors.orange,
                    ),
                    ListTile(
                      leading: const Icon(Icons.web, color: Colors.orange),
                      title: const Text("Web Perusahaan"),
                      subtitle: const Text("smkn64-jkt.sch.id"),
                      onTap: () async {
                        final Uri url = Uri.parse('https://smkn64-jkt.sch.id');
                        if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}