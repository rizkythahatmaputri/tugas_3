import 'package:flutter/material.dart';
import 'package:tugas_3/sidemenu.dart';

class BukuPage extends StatelessWidget {
  const BukuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rekomendasi Buku Self Development'),
      ),
      body: ListView(
        children: [
          // Tambahkan card untuk setiap buku
          Card(
            child: Column(
              children: [
                // Judul buku
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'The 7 Habits of Highly Effective People',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Pengarang buku
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Stephen R. Covey',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                // Deskripsi buku
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'The 7 Habits of Highly Effective People adalah buku self-help yang ditulis oleh Stephen R. Covey. Buku ini membahas tentang tujuh kebiasaan yang dapat membantu seseorang untuk menjadi lebih efektif dalam kehidupannya.',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                // Judul buku
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Thinking, Fast and Slow',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Pengarang buku
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Daniel Kahneman',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                // Deskripsi buku
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Thinking, Fast and Slow adalah buku psikologi yang ditulis oleh Daniel Kahneman. Buku ini membahas tentang dua sistem berpikir manusia, yaitu sistem 1 (instan, intuitif, dan emosional) dan sistem 2 (sadar, analitis, dan rasional).',
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Card(
  child: Column(
    children: [
      // Judul buku
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Atomic Habits',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // Pengarang buku
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'James Clear',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
      // Deskripsi buku
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Atomic Habits adalah buku self-help yang ditulis oleh James Clear. Buku ini membahas tentang bagaimana membentuk kebiasaan yang baik dan menghilangkan kebiasaan yang buruk.',
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
      ),
    ],
  ),
),
        ],
      ),
      drawer: const Sidemenu(),
    );
  }
}
