import 'package:flutter/material.dart';
import 'package:iot_water_meter/setting/setting_user.dart';

import 'add_water_meter.dart';

class DashboardUser extends StatefulWidget {
  const DashboardUser({super.key});

  @override
  _DashboardUserState createState() => _DashboardUserState();
}

class _DashboardUserState extends State<DashboardUser> {
  List<String> data = []; // List untuk menyimpan data yang diambil dari API
  bool _isMenuOpen = false; // Flag untuk mengecek apakah menu terbuka

  @override
  void initState() {
    super.initState();
    fetchData(); // Memanggil fungsi untuk mengambil data saat halaman dimulai
  }

  // Fungsi untuk mengambil data dari API
  Future<void> fetchData() async {
    // Simulasi pemanggilan API (ganti dengan request nyata)
    await Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        // Menambahkan data setelah ditarik dari API
        data = List.generate(10, (index) => 'Item ${index + 1}');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_isMenuOpen) {
          setState(() {
            _isMenuOpen = false;
          });
          SettingUser.removeMenu(); // Menutup dropdown jika klik terjadi di luar menu
        }
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, // Menghilangkan tombol back
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start, // Menyelaraskan secara horizontal
            children: [
              const Text('Water Meter',
                  style: TextStyle(
                    fontWeight: FontWeight.w500, // Medium weight
                  ),
              ),
              const SizedBox(width: 10), // Jarak antara teks dan gambar
              GestureDetector(
                onTap: () {
                  // Navigasi ke halaman AddWaterMeter saat gambar di klik
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AddWaterMeter()),
                  );
                },
                child: Image.asset(
                  'assets/images/PlusCircle.png', // Path ke gambar
                  width: 35, // Ukuran lebar gambar
                  height: 35, // Ukuran tinggi gambar
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0), // Menambahkan margin kanan
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isMenuOpen = !_isMenuOpen;
                    if (_isMenuOpen) {
                      SettingUser.showMenu(context, _isMenuOpen); // Tampilkan menu saat diklik
                    } else {
                      SettingUser.removeMenu(); // Hilangkan menu jika tidak ingin ditampilkan
                    }
                  });
                },
                child: const Icon(Icons.settings, size: 35),
              ),
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
            children: [
              // Container mirip RecyclerView
              Expanded(
                child: ListView.builder(
                  itemCount: data.length, // Jumlah item yang ditampilkan
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        height: 100, // Ukuran container
                        color: Colors.blueAccent, // Warna kontainer
                        child: Center(
                          child: Text(
                            data[index],
                            style: const TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              // Loading indicator jika data belum ditarik
              if (data.isEmpty)
                const Center(
                  child: CircularProgressIndicator(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
