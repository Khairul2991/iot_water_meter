import 'package:flutter/material.dart';
import 'package:iot_water_meter/user/dashboard_user.dart';

import '../common/app_colors.dart';

class CompleteProfile extends StatelessWidget {
  const CompleteProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40),
                    // Teks di pojok kiri atas
                    const Text(
                      'Complete Your Profile',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 60), // Spasi setelah teks

                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      ),
                    ),
                    const SizedBox(height: 10),

                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Street',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      ),
                    ),
                    const SizedBox(height: 10),

                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Sub-district',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      ),
                    ),
                    const SizedBox(height: 10),

                    TextField(
                      decoration: InputDecoration(
                        labelText: 'District/City',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      ),
                    ),
                    const SizedBox(height: 10),

                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Province',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      ),
                    ),
                    const SizedBox(height: 10),

                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Country',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Tombol Submit
            SizedBox(
              width: double.infinity, // Membuat tombol selebar penuh
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DashboardUser()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary, // Latar belakang tombol
                  foregroundColor: Colors.black, // Warna teks
                  padding: const EdgeInsets.symmetric(vertical: 20), // Padding vertikal
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500, // Medium weight
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
