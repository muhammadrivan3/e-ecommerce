import 'package:flutter/material.dart';
import 'package:e_commerce/constants.dart';

class TransaksiPage extends StatefulWidget {
  @override
  State<TransaksiPage> createState() => _TransaksiPageState();
}

class _TransaksiPageState extends State<TransaksiPage> {
  final titles = ["Iphone 13 Pro", "Iphone 13 Pro", "Iphone 13 Pro"];
  final subtitles = [
    "Terjual pada tanggal 13",
    "Terjual pada tanggal 03",
    "Terjual pada tanggal 30"
  ];
  final icons = [Icons.sell, Icons.sell, Icons.sell];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transaksi"),
      ),
      body: produkbyKategori(),
    );
  }

  Widget produkbyKategori() {
    return ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(titles[index]),
              subtitle: Text(subtitles[index]),
              // leading: CircleAvatar(
              //   Image.asset("assets/produk/iphone13promax.jpg"),
              // ),
              leading: CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/produk/iphone13promax.jpg")),
              trailing: Icon(icons[index]),
            ),
          );
        });
  }
}
