import 'package:e_commerce/constants.dart';
import 'package:e_commerce/users/depanpage.dart';
import 'package:e_commerce/users/kategoripage.dart';
import 'package:flutter/material.dart';

class BerandaPage extends StatefulWidget {
  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late int _activateTabIndex;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _tabController.addListener(_setActivateTabIndex);
  }

  void _setActivateTabIndex() {
    _activateTabIndex = _tabController.index;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void pencarian() {
    print("Pencarian dimulai !!!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onTap: () {},
          readOnly: true,
          style: TextStyle(fontSize: 15),
          decoration: InputDecoration(
            hintText: '  Search',
            // prefixIcon: Icon(
            //   Icons.search,
            //   color: Palette.orange,
            // ),
            contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: new BorderSide(color: Colors.white),
            ),
            fillColor: Color(0xfff3f3f4),
            filled: true,
            suffixIcon: IconButton(
              onPressed: () {
                pencarian();
              },
              icon: Icon(Icons.search),
              color: Colors.red,
            ),
          ),
        ),
        backgroundColor: Palette.bg3,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white70,
          labelPadding: EdgeInsets.all(0),
          tabs: [
            Tab(
              text: 'Beranda',
            ),
            Tab(
              text: 'Kategori',
            ),
          ],
        ),
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          DepanPage(),
          KategoriPage(),
        ],
      ),
    );
  }
}
