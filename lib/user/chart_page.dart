import 'package:flutter/material.dart';
import '../common/app_colors.dart';
import '../setting/setting.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({super.key});

  @override
  _ChartPageState createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  int _selectedIndex = 0;
  bool _isMenuOpen = false; // Variabel untuk melacak status menu

  final List<Widget> _contentWidgets = [
    // Day Content
    SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '22 September 2023',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Total usage today',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '70.07 liter',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add functionality for date selection here
                },
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black), // Black stroke
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                ),
                child: const Text(
                  'Select Date',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
    // Week Content
    SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '28 Aug 2023 - 03 Sep 2023',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Total usage this week',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '70.07 liter',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add functionality for week selection here
                },
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black), // Black stroke
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                ),
                child: const Text(
                  'Select Week',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
    // Month Content
    SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'September 2023',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Total usage this month',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '70.07 liter',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add functionality for month selection here
                },
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black), // Black stroke
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                ),
                child: const Text(
                  'Select Month',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
    // Custom Content
    SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '28 Aug 2023 - 03 Sep 2023',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Total usage this week',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '70.07 liter',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add functionality for custom date selection here
                },
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black), // Black stroke
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                ),
                child: const Text(
                  'Select Custom',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  ];

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
          title: const Text('ID Water Meter'),
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
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(4.0),
            child: Divider(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Wrap Status text with Container for stroke and background
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1), // Black border
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        const Text(
                          'Status : ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600, // Semi-bold font weight
                          ),
                        ),
                        const SizedBox(width: 4),
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                            color: AppColors.green, // Green color for the icon background
                            shape: BoxShape.circle, // Circular shape
                          ),
                          child: Image.asset(
                            'assets/images/green_circle.png', // Path to the image asset
                            width: 20, // Width of the image
                            height: 20, // Height of the image
                            fit: BoxFit.cover, // To cover the circular container fully
                          ),
                        ),
                        const SizedBox(width: 4),
                        const Text(
                          '(On)', // Status value text
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black, // Text color to indicate the "Nyala" status
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Row(
                    children: [
                      Text(
                        '50%',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(width: 4),
                      // Battery icon rotated horizontally
                      RotatedBox(
                        quarterTurns: 1, // 90 degrees rotation
                        child: Icon(
                          Icons.battery_full,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
              // Use Row to align buttons with space between
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                      _selectedIndex == 0 ? AppColors.primary : null, // Apply primary color if selected
                      padding: const EdgeInsets.symmetric(horizontal: 16.0), // More left/right padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // Less rounded
                      ),
                    ),
                    child: const Text(
                      'Day',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                      _selectedIndex == 1 ? AppColors.primary : null, // Apply primary color if selected
                      padding: const EdgeInsets.symmetric(horizontal: 16.0), // More left/right padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // Less rounded
                      ),
                    ),
                    child: const Text(
                      'Week',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                      _selectedIndex == 2 ? AppColors.primary : null, // Apply primary color if selected
                      padding: const EdgeInsets.symmetric(horizontal: 16.0), // More left/right padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // Less rounded
                      ),
                    ),
                    child: const Text(
                      'Month',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 3;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                      _selectedIndex == 3 ? AppColors.primary : null, // Apply primary color if selected
                      padding: const EdgeInsets.symmetric(horizontal: 16.0), // More left/right padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // Less rounded
                      ),
                    ),
                    child: const Text(
                      'Custom',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: IndexedStack(
                  index: _selectedIndex,
                  children: _contentWidgets,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
