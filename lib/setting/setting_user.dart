import 'package:flutter/material.dart';

class SettingUser {
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
                  _buildMenuItem('Profile', Icons.account_circle),
                  _buildMenuItem('Language', Icons.language),
                  _buildMenuItem('Logout', Icons.logout),
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

  // Menambahkan ikon dan posisi item menu ke kiri
  static Widget _buildMenuItem(String title, IconData icon) {
    return InkWell(
      onTap: () {
        // Lakukan aksi berdasarkan pilihan (misalnya, navigasi atau logout)
        print('$title clicked');
        removeMenu(); // Menutup menu setelah item dipilih
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0), // Menambahkan padding horizontal dan vertikal
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
}
