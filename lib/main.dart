import 'package:flutter/material.dart';
import 'package:iot_water_meter/dashboard_user.dart';
import 'package:iot_water_meter/complete_profile.dart';
import 'package:iot_water_meter/pick_id.dart';
import 'package:iot_water_meter/register_page.dart';
import 'common/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Water Meter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/icon-512px.png', // Sesuaikan path dengan gambar Anda
              width: 150, // Lebar gambar
              height: 150, // Tinggi gambar
            ),
            const SizedBox(height: 80),
            const Text(
              'Welcome to App Water Meter',
              style: TextStyle(
                fontSize: 24, // Make the text larger
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 80), // Add space between the text and button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: AppColors.black1, // Warna teks tombol
              ),
              child: const Text(
                  'Get Started',
                style: TextStyle(fontSize: 16),),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CompleteProfile()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: AppColors.black1, // Warna teks tombol
              ),
              child: const Text(
                'complete profile',
                style: TextStyle(fontSize: 16),),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DashboardUser()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: AppColors.black1, // Warna teks tombol
              ),
              child: const Text(
                'available tools',
                style: TextStyle(fontSize: 16),),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PickId()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: AppColors.black1, // Warna teks tombol
              ),
              child: const Text(
                'pick id',
                style: TextStyle(fontSize: 16),),
            ),

          ],
        ),
      ),
    );
  }
}
