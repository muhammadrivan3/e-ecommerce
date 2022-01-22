import 'package:e_commerce/constants.dart';
import 'package:flutter/material.dart';

class KeranjangPage extends StatefulWidget {
  @override
  State<KeranjangPage> createState() => _KeranjangPageState();
}

class _KeranjangPageState extends State<KeranjangPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite"),
      ),
      body: Stack(children: <Widget>[
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              produkbyKategori(),
            ],
          ),
        ),
      ]),
    );
  }

  Widget produkbyKategori() {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      padding: EdgeInsets.only(right: 10.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
            padding: EdgeInsets.only(right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Text(
                    "List Barang Favorite",
                    style: TextStyle(color: Colors.white),
                  ),
                  width: 200.0,
                  padding: EdgeInsets.only(
                      left: 10.0, right: 10.0, top: 2.0, bottom: 2.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0)),
                    color: Palette.bg3,
                    boxShadow: [
                      BoxShadow(color: Palette.bg2, spreadRadius: 1),
                    ],
                  ),
                ),
                // InkWell(
                //   onTap: () {
                //     // Navigator.of(context).push(MaterialPageRoute<Null>(
                //     //     builder: (BuildContext context) {
                //     //   return new ProdukPage(
                //     //       "kat", widget.id, 0, widget.kategori);
                //     // }));
                //   },
                //   child: Text('Selengkapnya',
                //       style: TextStyle(color: Colors.blue)),
                // ),
              ],
            ),
          ),
          Container(
            child: Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: <Widget>[
                    for (var i = 0; i < 10; i++)
                      Container(
                        child: Center(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: <Widget>[
                                RecomendPlantCard(
                                  image: "assets/produk/asusrogzephyrus.jpg",
                                  title: "Asus Rog",
                                  country: "Indonesia",
                                  price: 440,
                                  press: () {
                                    print("Anda Memilih asus");
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //     builder: (context) => DetailsScreen(),
                                    //   ),
                                    // );
                                  },
                                ),
                                RecomendPlantCard(
                                  image: "assets/produk/iphone13promax.jpg",
                                  title: "Iphone 13",
                                  country: "Indonesia",
                                  price: 440,
                                  press: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //     builder: (context) => DetailsScreen(),
                                    //   ),
                                    // );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    // required Key key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  });
  //  : super(key: key)

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: null,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    // style: Theme.of(context)
                    //     .textTheme
                    //     .button
                    //     .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
