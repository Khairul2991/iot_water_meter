import 'package:flutter/material.dart';

class PickId extends StatelessWidget {
  const PickId({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nama Petugas (ID)'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings), // Ikon pengaturan
            iconSize: 35,
            onPressed: () {
              // Logika ketika ikon pengaturan ditekan
              // Anda dapat menavigasi ke halaman pengaturan atau menampilkan dialog, dll.
              print('Settings pressed');
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0), // Tinggi stroke
          child: Container(
            height: 1.0, // Tinggi stroke
            color: Colors.black, // Warna stroke
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Teks di pojok kiri atas
            const Text(
              'Water Meter',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20), // Spasi setelah teks

            // Box 1 dengan label Tool ID
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey), // Warna garis tepi
                borderRadius: BorderRadius.circular(10), // Sudut bulat pada border
              ),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10), // Padding di dalam Container
              child: const Text(
                'Tool ID', // Teks yang ditampilkan
                style: TextStyle(fontSize: 16), // Ukuran teks
              ),
            ),
            const SizedBox(height: 20), // Spasi antara box 1 dan box 2

            // Box 2 dengan label Tool ID
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey), // Warna garis tepi
                borderRadius: BorderRadius.circular(10), // Sudut bulat pada border
              ),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10), // Padding di dalam Container
              child: const Text(
                'Tool ID', // Teks yang ditampilkan
                style: TextStyle(fontSize: 16), // Ukuran teks
              ),
            ),
            const SizedBox(height: 20), // Spasi sebelum tombol
            const Spacer(),
            // Tombol "Select"
            SizedBox(
              width: double.infinity, // Membuat tombol selebar penuh
              child: ElevatedButton(
                onPressed: () {
                  // Logic ketika tombol ditekan
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black, // Latar belakang tombol hitam
                  foregroundColor: Colors.white, // Teks putih pada tombol
                  padding: const EdgeInsets.symmetric(vertical: 20), // Padding vertikal
                ),
                child: const Text(
                  'Select',
                  style: TextStyle(fontSize: 16), // Ukuran teks pada tombol
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
