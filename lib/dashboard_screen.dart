import 'package:flutter/material.dart';
import 'login_form.dart'; // Impor form login
import 'search_bar.dart'; // Impor search bar

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final List<Map<String, dynamic>> kostData = [
    {'name': 'Kost A', 'price': 500000, 'location': 'Jakarta'},
    {'name': 'Kost B', 'price': 600000, 'location': 'Bandung'},
    {'name': 'Kost C', 'price': 550000, 'location': 'Surabaya'},
    // Tambahkan data kost lainnya sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ayokost Dashboard'),
      ),
      body: Column(
        children: <Widget>[
          // Tambahkan fitur login di sini
          // Contoh: LoginForm(),

          // Tambahkan fitur pencarian di sini
          // Contoh: SearchBar(),

          const SizedBox(height: 16),
          Text(
            'Daftar Semua Kost',
            style: TextStyle(fontSize: 24),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: kostData.length,
              itemBuilder: (context, index) {
                final kost = kostData[index];
                return ListTile(
                  title: Text(kost['name']),
                  subtitle: Text(
                      'Harga: Rp ${kost['price']} / Lokasi: ${kost['location']}'),
                  // Tambahkan fungsi untuk menampilkan detail kost
                  // Contoh: onTap: () => showKostDetail(kost),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
