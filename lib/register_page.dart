import 'package:flutter/material.dart';

import 'common/app_colors.dart';

void main() {
  runApp(const RegisterPage());
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins', // Tetapkan Poppins sebagai font default
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontFamily: 'Poppins'),
          bodyMedium: TextStyle(fontFamily: 'Poppins'),
          bodySmall: TextStyle(fontFamily: 'Poppins'),
        ),
      ),
      home: const RegisterScreen(),
    );
  }
}

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 50), // Jarak dari atas
            Center(
              child: Image.asset(
                'assets/images/icon-512px.png',
                width: 180,
                height: 180,
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              'Login Your',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600, // Semibold
              ),
            ),
            const Text(
              'Account',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600, // Semibold
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: double.infinity, // Membuat tombol lebar penuh
              child: ElevatedButton(
                onPressed: () {
                  // Actions for Google login
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.blue,
                  backgroundColor: AppColors.primary, // Warna teks tombol
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10), // Padding vertikal untuk tombol
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/google.png',
                      width: 24, // Sesuaikan ukuran ikon Google
                      height: 24,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Continue with Google',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500, // Medium
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Center(child: Text('Or', style: TextStyle(fontSize: 16))),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity, // Membuat tombol lebar penuh
              child: ElevatedButton(
                onPressed: () {
                  // Actions for Facebook login
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.blue,
                  backgroundColor: AppColors.primary, // Warna teks tombol
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10), // Padding vertikal untuk tombol
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/facebook.png',
                      width: 24, // Sesuaikan ukuran ikon Facebook
                      height: 24,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Continue with Facebook',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500, // Medium
                      ),
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
