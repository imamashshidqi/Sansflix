import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Film",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
        backgroundColor: Colors.blue[400],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue[400],
              ),
              child: const Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Halaman Utama'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              leading: const Icon(Icons.movie),
              title: const Text('Admin'),
              onTap: () {
                Navigator.pushNamed(context, '/page1');
              },
            ),
          ],
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.75, // Menyesuaikan proporsi tinggi dan lebar
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Column(
                  children: [
                    Image.asset(
                      'Avenger-Endgame.jpeg',
                      width: constraints
                          .maxWidth, // Menggunakan lebar maksimum parent
                      height: constraints.maxHeight *
                          0.9, // Menggunakan 60% dari tinggi parent
                      fit: BoxFit
                          .cover, // Menyesuaikan gambar agar pas di dalam container
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: constraints.maxHeight * 0.002),
                      width: constraints.maxWidth *
                          0.9, // Menyesuaikan lebar container dengan lebar parent
                      child: const Text(
                        "Avenger Endgame",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                        textAlign: TextAlign
                            .center, // Menyesuaikan teks agar berada di tengah
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image.asset(
                  'Avenger-Endgame.jpeg',
                  width: double.infinity,
                  height: 450, // Menyesuaikan tinggi gambar
                  fit: BoxFit
                      .cover, // Menyesuaikan gambar agar pas di dalam container
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: const Text(
                    "Avenger Endgame",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image.asset(
                  'avengers-infinity-war.jpg',
                  width: double.infinity,
                  height: 450, // Menyesuaikan tinggi gambar
                  fit: BoxFit
                      .cover, // Menyesuaikan gambar agar pas di dalam container
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: const Text(
                    "Avenger Infinity War",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image.asset(
                  'Captain-America.jpeg',
                  width: double.infinity,
                  height: 450, // Menyesuaikan tinggi gambar
                  fit: BoxFit
                      .cover, // Menyesuaikan gambar agar pas di dalam container
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: const Text(
                    "Captain America",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image.asset(
                  'DrStrange-mom.jpeg',
                  width: double.infinity,
                  height: 450, // Menyesuaikan tinggi gambar
                  fit: BoxFit
                      .cover, // Menyesuaikan gambar agar pas di dalam container
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: const Text(
                    "Docter Strange Multiverse of Madness",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image.asset(
                  'loki.jpg',
                  width: double.infinity,
                  height: 450, // Menyesuaikan tinggi gambar
                  fit: BoxFit
                      .cover, // Menyesuaikan gambar agar pas di dalam container
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: const Text(
                    "Loki",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image.asset(
                  'Spiderman-nwh.jpeg',
                  width: double.infinity,
                  height: 450, // Menyesuaikan tinggi gambar
                  fit: BoxFit
                      .cover, // Menyesuaikan gambar agar pas di dalam container
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: const Text(
                    "Spider-man No Way Home",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
