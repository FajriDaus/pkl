import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        color: const Color(0xFF343a40),
      )),
      home: NavBar(),
    );
  }
}

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplikasi Sistem Pakar"),
        // centerTitle: true,
      ),
      body: Center(
        child: Text("Index halaman yang ditampilkan : $_selectedNavbar",
            style: TextStyle(fontSize: 16)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tambah proses onPressed di sini biar lebih ganteng kaya fajri
        },
        child: const Icon(Icons.add),
        backgroundColor: Color(0xFF343a40),
      ),
        bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(size: 26),
        unselectedIconTheme: IconThemeData(size: 24),
        selectedLabelStyle: TextStyle(fontSize: 16),
        unselectedLabelStyle: TextStyle(fontSize: 14),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            title: Text('Beranda'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_services_outlined),
            title: Text('Test'),
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Color(0xFF343a40),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}
