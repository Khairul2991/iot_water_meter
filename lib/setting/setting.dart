import 'package:flutter/material.dart';

import '../user/profile_user.dart';

class Setting {
  // Variabel untuk overlay
  static OverlayEntry? _overlayEntry;

  // Menampilkan menu menggunakan Overlay
  static void showMenu(BuildContext context, bool isMenuOpen) {
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    final position = renderBox.localToGlobal(Offset.zero); // Mendapatkan posisi ikon settings

    _overlayEntry = OverlayEntry(
      builder: (context) {
        return Positioned(
          top: position.dy + 80, // Posisi tepat di bawah ikon settings
          right: position.dx + 20,
          child: Material(
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white, // Warna latar belakang
                border: Border.all(
                  color: Colors.black, // Menambahkan border hitam
                  width: 1.0, // Ketebalan border
                ),
                borderRadius: BorderRadius.circular(5.0), // Sudut border yang melengkung (opsional)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Menyelaraskan item menu ke kiri
                children: [
                  _buildMenuItem(
                    context,
                    'Profile',
                    Icons.account_circle,
                        () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ProfileUser()),
                      );
                    },
                  ),
                  _buildMenuItem(
                    context,
                    'Language',
                    Icons.language,
                        () {
                      removeMenu();
                      _showLanguagePopup(context);
                    },
                  ),
                  _buildMenuItem(
                    context,
                    'Logout',
                    Icons.logout,
                        () {
                      print('Logout clicked');
                      removeMenu();
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );

    // Menambahkan overlay ke tampilan
    Overlay.of(context).insert(_overlayEntry!);
  }

  // Menghapus menu jika tidak lagi dibutuhkan
  static void removeMenu() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  // Menambahkan ikon dan navigasi ke item menu
  static Widget _buildMenuItem(
      BuildContext context,
      String title,
      IconData icon,
      VoidCallback onTap,
      ) {
    return InkWell(
      onTap: () {
        onTap();
        removeMenu(); // Menutup menu setelah item dipilih
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0), // Padding horizontal dan vertikal
        child: Row(
          children: [
            Icon(icon, size: 20), // Ikon di kiri
            const SizedBox(width: 10), // Jarak antara ikon dan teks
            Text(title, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk menampilkan pop-up Language
  static void _showLanguagePopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0), // Sudut melengkung pop-up
          ),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Header pop-up dengan label dan tombol close
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Language',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        Navigator.of(context).pop(); // Menutup pop-up
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 16.0), // Jarak setelah header
                // Body pop-up dengan item bahasa
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _buildLanguageItem('English'),
                    _buildLanguageItem('Indonesia'),
                    _buildLanguageItem('East Timor'),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

// Fungsi untuk membuat item bahasa dengan border
  static Widget _buildLanguageItem(String language) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8.0), // Jarak antar item
      padding: const EdgeInsets.symmetric(vertical: 12.0), // Padding dalam item
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black), // Warna dan ketebalan border
        borderRadius: BorderRadius.circular(8.0), // Sudut melengkung pada border
      ),
      child: Center(
        child: Text(
          language,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }

}
