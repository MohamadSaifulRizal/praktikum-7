import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Wisata Pantai di Banyuwangi',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                'Belimbingsari, Banyuwangi, Indonesia',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        const Icon(
          Icons.star,
          color: Color.fromARGB(255, 255, 255, 0),
        ),
        const Text('5'),
      ],
    ),
  );

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    // _buildButtonColumn(color, Icons.call, 'CALL'),
    // _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
    // _buildButtonColumn(color, Icons.share, 'SHARE'),
  ],
);

Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: Column(
    children: [
      Image.asset("assets/bs.jpg"
      ),
      const SizedBox(height: 16), // Jarak antara gambar dan teks
      const Text(
        'Pantai Blimbingsari terletak di Kecamatan Rogojampi, lokasinya sangat dekat dengan Bandara Internasional Banyuwangi. Pantai ini terkenal dengan kuliner ikan bakarnya yang khas Banyuwangi. Di sini kamu tidak hanya disuguhi pemandangan alam khas pantai, tetapi kamu juga bisa mencicipi berbagai olahan makanan laut. Di pinggir pantai kamu akan melihat deretan perahu nelayan yang bisa dijadikan sebagai objek foto. Tidak seperti pantai yang ada di Bali, pasir di Pantai Blimbingsari berwarna gelap cenderung hitam. Namun, warna pasir tersebut tidak mengurangi keelokan pantai ini.', // Teks deskripsi
        softWrap: true,
      ),
    ],
  ),
);


    return MaterialApp(
      title: 'Mohamad Saiful Rizal_362358302005',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('pantai belimbingsari uraaaaa'),
        ),
        body: ListView(
          children: [
            Image.asset("assets/bs.jpg"
            ),
            titleSection,
            buttonSection,
            textSection,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildButtonColumn(color, Icons.call, 'CALL'),
                _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
                _buildButtonColumn(color, Icons.share, 'SHARE'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}