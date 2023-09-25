import 'package:flutter/material.dart';
import 'package:tugas_3/sidemenu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      // AppBar
      body: Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Tambahkan judul
            Text(
              'Selamat Datang!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            // Tambahkan gambar
            Image.network(
              'https://picsum.photos/200',
              height: 100,
            ),
            SizedBox(height: 10),
            // Tambahkan konten halaman
            Text(
              'Disini Kamu Bisa Melakukan:',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 10),
            // Tambahkan daftar fitur
            Text(
              '* Melihat About',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
            Text(
              '* Melihat Rekomendasi Buku',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
       drawer: const Sidemenu(),
    );
  }
}
