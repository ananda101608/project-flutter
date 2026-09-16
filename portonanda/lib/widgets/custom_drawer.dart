import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final String currentPage;

  const CustomDrawer({
    super.key,
    this.currentPage = 'beranda',
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Header Drawer dengan identitas Ananda
          DrawerHeader(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF0F172A), // Slate 900
                  Color(0xFF1E3A8A), // Blue 900
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: const Color(0xFF38BDF8), width: 2),
                  ),
                  child: const CircleAvatar(
                    radius: 28,
                    backgroundColor: Color(0xFF1E293B),
                    child: Icon(
                      Icons.person,
                      size: 34,
                      color: Color(0xFF38BDF8),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Ananda Rachmatu',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Flutter Developer • RPL SMKN 64',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF94A3B8),
                  ),
                ),
              ],
            ),
          ),

          // Menu 1: Beranda
          _buildDrawerItem(
            context: context,
            icon: Icons.home_rounded,
            title: 'Beranda',
            routeName: '/',
            isSelected: currentPage == 'beranda',
          ),

          // Menu 2: Profile
          _buildDrawerItem(
            context: context,
            icon: Icons.person_rounded,
            title: 'Profile',
            routeName: '/profile',
            isSelected: currentPage == 'profile',
          ),

          // Menu 3: Skill
          _buildDrawerItem(
            context: context,
            icon: Icons.psychology_rounded,
            title: 'Skill & Keahlian',
            routeName: '/skill',
            isSelected: currentPage == 'skill',
          ),

          // Menu 4: Project
          _buildDrawerItem(
            context: context,
            icon: Icons.work_rounded,
            title: 'Project Portofolio',
            routeName: '/project',
            isSelected: currentPage == 'project',
          ),

          // Menu 5: Contact Me
          _buildDrawerItem(
            context: context,
            icon: Icons.contact_mail_rounded,
            title: 'Contact Me',
            routeName: '/contactme',
            isSelected: currentPage == 'contactme',
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Divider(color: Color(0xFFE2E8F0)),
          ),

          // Footer info
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
            child: Text(
              'Portofolio v1.0 • 2026',
              style: TextStyle(
                fontSize: 11,
                color: Color(0xFF94A3B8),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String routeName,
    required bool isSelected,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: isSelected ? const Color(0xFF1E3A8A) : const Color(0xFF64748B),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
          color: isSelected ? const Color(0xFF1E3A8A) : const Color(0xFF334155),
        ),
      ),
      tileColor: isSelected ? const Color(0xFFEFF6FF) : Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      onTap: () {
        Navigator.pop(context); // Tutup drawer terlebih dahulu
        if (!isSelected) {
          if (routeName == '/') {
            Navigator.pushReplacementNamed(context, '/');
          } else {
            Navigator.pushNamed(context, routeName);
          }
        }
      },
    );
  }
}
