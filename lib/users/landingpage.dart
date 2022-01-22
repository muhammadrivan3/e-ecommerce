import 'package:e_commerce/constants.dart';
import 'package:e_commerce/users/akunpage.dart';
import 'package:e_commerce/users/berandapage.dart';
import 'package:e_commerce/users/keranjangpage.dart';
import 'package:e_commerce/users/transaksipage.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new BerandaPage(),
    //new FavoritePage(),
    new KeranjangPage(),
    new TransaksiPage(),
    new AkunPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Palette.bg3,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
        currentIndex: _bottomNavCurrentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.home,
              color: Palette.bg3,
            ),
            icon: new Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.favorite,
              color: Palette.bg3,
            ),
            icon: new Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
            label: 'Favorite',
          ),
          // BottomNavigationBarItem(
          //   activeIcon: new Icon(
          //     Icons.shopping_cart,
          //     color: Palette.bg1,
          //   ),
          //   icon: new Icon(
          //     Icons.shopping_cart,
          //     color: Colors.grey,
          //   ),
          //   label: 'Keranjang',
          // ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.shopping_cart,
              color: Palette.bg3,
            ),
            icon: new Icon(
              Icons.shopping_cart,
              color: Colors.grey,
            ),
            label: 'Transaksi',
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.person,
              color: Palette.bg3,
            ),
            icon: new Icon(
              Icons.person,
              color: Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Tambah Barang");
        },
        tooltip: 'Tambah',
        child: Icon(Icons.add),
        backgroundColor: Colors.blue[400],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
