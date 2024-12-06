import 'package:flutter/material.dart';
import 'package:iot_water_meter/setting/setting.dart';
import '../common/app_colors.dart';
import 'add_water_meter.dart';
import 'chart_page.dart';

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
          Setting.removeMenu(); // Menutup dropdown jika klik terjadi di luar menu
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
              padding: const EdgeInsets.only(right: 12.0), // Menambahkan margin kanan
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isMenuOpen = !_isMenuOpen;
                    if (_isMenuOpen) {
                      Setting.showMenu(context, _isMenuOpen); // Tampilkan menu saat diklik
                    } else {
                      Setting.removeMenu(); // Hilangkan menu jika tidak ingin ditampilkan
                    }
                  });
                },
                child: const Icon(Icons.settings, size: 35),
              ),
            ),
          ],
          backgroundColor: Colors.white, // Menetapkan warna latar belakang AppBar dengan solid
          elevation: 4.0, // Tambahkan elevasi jika perlu untuk memberikan bayangan
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
                        padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 0), // Menambahkan padding dalam container
                        decoration: BoxDecoration(
                          color: AppColors.gray, // Warna kontainer
                          borderRadius: BorderRadius.circular(8), // Sudut kontainer melengkung
                          border: Border.all(color: Colors.black), // Menambahkan border hitam
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Teks informasi
                            const Row(
                              children: [
                                Text('Name', style: TextStyle(color: Colors.black)),
                                SizedBox(width: 72),
                                Text(':', style: TextStyle(color: Colors.black)),
                                Expanded(child: Text(' John Doe', style: TextStyle(color: Colors.black))),
                              ],
                            ),
                            const Row(
                              children: [
                                Text('ID Water Meter', style: TextStyle(color: Colors.black)),
                                SizedBox(width: 10),
                                Text(':', style: TextStyle(color: Colors.black)),
                                Expanded(child: Text(' 12345', style: TextStyle(color: Colors.black))),
                              ],
                            ),
                            const Row(
                              children: [
                                Text('Battery', style: TextStyle(color: Colors.black)),
                                SizedBox(width: 65),
                                Text(':', style: TextStyle(color: Colors.black)),
                                Expanded(child: Text(' 75%', style: TextStyle(color: Colors.black))),
                              ],
                            ),
                            const Row(
                              children: [
                                Text('Total Today', style: TextStyle(color: Colors.black)),
                                SizedBox(width: 32),
                                Text(':', style: TextStyle(color: Colors.black)),
                                Expanded(child: Text(' 50 liters', style: TextStyle(color: Colors.black))),
                              ],
                            ),
                            // Menambahkan teks 'Selengkapnya' dan ikon tanda panah
                            Align(
                              alignment: Alignment.bottomRight,
                              child: TextButton(
                                onPressed: () {
                                  // Fungsi untuk menampilkan detail lebih lanjut
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const ChartPage()),
                                  );
                                },
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 4), // Menghapus padding atas bawah
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Selengkapnya',
                                      style: TextStyle(
                                        color: Color(0xFF595959),
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(width: 5), // Memberikan jarak antara teks dan ikon
                                    Icon(
                                      Icons.arrow_forward, // Tanda panah
                                      size: 16,
                                      color: Color(0xFF595959),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
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
