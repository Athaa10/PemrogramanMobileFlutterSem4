import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Belajar Flutter',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,color: Colors.white),
              ), backgroundColor: const Color.fromARGB(255, 55, 92, 156),
              actions: [
                IconButton(
                  icon: const Icon(Icons.info_outline),
                  onPressed: () {
                    // Aksi ketika tombol info ditekan
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Informasi'),
                        content: const Text('Ini adalah aplikasi Flutter sederhana.'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () {
                    // Aksi ketika tombol pengaturan ditekan
                    print('Tombol pengaturan ditekan');
                  },
                ),
              ],
        //       leading: IconButton(
        //         icon: const Icon(Icons.book),
        //         onPressed: () {
        //           // Aksi ketika tombol menu ditekan
        //           print('Tombol menu ditekan');
        //         },
        //       )
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              width: 550,
              height: 150,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 231, 222, 244),
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: const Color.fromARGB(255, 55, 92, 156), width: 2),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 198, 151, 159),
                    Color.fromARGB(255, 117, 6, 30),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: const Text(
                'Selamat datang di aplikasi Flutter!',
                style: TextStyle(fontSize: 18),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Aksi ketika tombol ditekan
                  print('Tombol ditekan');
                },
                child: const Text('Tekan Saya'),
              ),
            ),
          ],
        ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Aksi ketika tombol FAB ditekan
              print('Tombol FAB ditekan');
            },
            child: const Icon(Icons.send),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.search),
              //   label: 'Search',
              // ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.person),
              //   label: 'Profile',
              // ),
              BottomNavigationBarItem(
                icon: Icon(Icons.delete),
                label: 'Hapus',
              ),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: const [
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text('Menu Drawer',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,color: Colors.white),
                      ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
                ListTile(
                  leading: Icon(Icons.info),
                  title: Text('About'),
                ),
              ],
            ),
      ),
    ),
    );
  }
}