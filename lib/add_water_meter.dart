import 'package:flutter/material.dart';
import 'common/app_colors.dart';

class AddWaterMeter extends StatefulWidget {
  const AddWaterMeter({super.key});

  @override
  _AddWaterMeterState createState() => _AddWaterMeterState();
}

class _AddWaterMeterState extends State<AddWaterMeter> {
  final _formKey = GlobalKey<FormState>(); // Kunci untuk validasi form
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  @override
  void dispose() {
    _idController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Water Meter',
          style: TextStyle(
            fontWeight: FontWeight.w500, // Medium weight
          ),
        ),
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
            // Form untuk input data
            Expanded( // Gunakan Expanded agar form mengambil ruang yang tersedia
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    // Input ID Water Meter
                    TextFormField(
                      controller: _idController,
                      decoration: const InputDecoration(
                        labelText: 'ID Water Meter',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the ID Water Meter';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16), // Jarak antar input

                    // Input Address Water Meter
                    TextFormField(
                      controller: _addressController,
                      decoration: const InputDecoration(
                        labelText: 'Address Water Meter',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the Address Water Meter';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16), // Jarak antar input
                  ],
                ),
              ),
            ),

            // Tombol Add di bagian bawah
            SizedBox(
              width: double.infinity, // Membuat tombol selebar penuh
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    // Jika form valid, lakukan aksi tambahan
                    String id = _idController.text;
                    String address = _addressController.text;

                    // Tindakan setelah menambahkan data (misalnya simpan ke database)
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Adding Water Meter: $id, $address')),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary, // Latar belakang tombol
                  foregroundColor: Colors.black, // Warna teks
                  padding: const EdgeInsets.symmetric(vertical: 20), // Padding vertikal
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Submit',
                  style: TextStyle(
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
