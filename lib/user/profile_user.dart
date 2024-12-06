import 'package:flutter/material.dart';
import 'package:iot_water_meter/setting/setting.dart';

class ProfileUser extends StatefulWidget {
  const ProfileUser({super.key});

  @override
  _ProfileUserState createState() => _ProfileUserState();
}

class _ProfileUserState extends State<ProfileUser> {
  List<String> apiData = List.filled(8, 'Loading...'); // Default teks sebelum data diterima
  final List<String> labels = [
    'Name',
    'Email',
    'Phone Number',
    'Street',
    'Sub-district',
    'District/City',
    'Province',
    'Country',
  ];

  bool _isMenuOpen = false; // Variabel untuk melacak status menu

  @override
  void initState() {
    super.initState();
    fetchDataFromAPI(); // Memanggil API saat widget dibuat
  }

  Future<void> fetchDataFromAPI() async {
    await Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        apiData = [
          'John Doe',
          'johndoe@gmail.com',
          '123-456-7890',
          '221B Baker Street',
          'Marylebone',
          'London',
          'England',
          'United Kingdom',
        ];
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
          title: const Text(
            'Profile',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
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
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1.0),
            child: Container(
              height: 1.0,
              color: Colors.black,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: List.generate(8, (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: TextField(
                  controller: TextEditingController(
                    text: apiData[index], // Teks dari API
                  ),
                  readOnly: true,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: labels[index],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
