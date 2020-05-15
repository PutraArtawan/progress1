import 'package:flutter/material.dart';
//import  terlebih  dahulu  halaman  yang  diperlukan
import './detail_produk.dart';

//Top  Level/Root
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First  App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("List Produk")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "UPods V2",
                    description: "Brand lokal ciptaan Aryo Ardianto ini memiliki misi 1 juta vapers baru. Maka tidak heran jika banderol harga yang diberikan pun juga terjangkau. productnation",
                    price: 499000,
                    image: "UPods.jpeg",
                  ),
                ));
              },
              child: ProductBox(
                name: "UPods V2",
                description: "Brand lokal ciptaan Aryo Ardianto ini memiliki misi 1 juta vapers baru. Maka tidak heran jika banderol harga yang diberikan pun juga terjangkau. productnation",
                price: 499000,
                image: "UPods.jpeg",
              ),
            ),
            new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk(
                      name: "SMOK Pod",
                      description:
                          "Pabrikan vape asal Cina ini berpusat di kota Shenzhen. Mereka berusaha mencapai banyak target pasar vaper, sehingga menciptakan banyak variasi produk. productnation",
                      price: 399000,
                      image: "Smok.jpg",
                    ),
                  ));
                },
                child: ProductBox(
                  name: "SMOK Pod",
                  description: "Pabrikan vape asal Cina ini berpusat di kota Shenzhen. Mereka berusaha mencapai banyak target pasar vaper, sehingga menciptakan banyak variasi produk. productnation",
                  price: 399000,
                  image: "Smok.jpg",
                )),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "Joyetech",
                    description:
                        "Perusahaan ini adalah produsen rokok elektrik asal Amerika Serikat yang terkenal akhir-akhir. Semua berkat variasi produk yang dibuat dengan beragam inovasi. productnation",
                    price: 299000,
                    image: "Joyetech.jpg",
                  ),
                ));
              },
              child: ProductBox(
                name: "Joyetech",
                description: "Perusahaan ini adalah produsen rokok elektrik asal Amerika Serikat yang terkenal akhir-akhir. Semua berkat variasi produk yang dibuat dengan beragam inovasi. productnation",
                price: 299000,
                image: "Joyetech.jpg",
              ),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "Aegis",
                    description: "Salah satu pemain lama di pasar vape adalah Aegis. Mereka salah satu brand yang dikenal orang-orang di awal naiknya pamor vape. productnation",
                    price: 349000,
                    image: "Aegis.jpg",
                  ),
                ));
              },
              child: ProductBox(
                name: "Aegis",
                description: "Salah satu pemain lama di pasar vape adalah Aegis. Mereka salah satu brand yang dikenal orang-orang di awal naiknya pamor vape. productnation",
                price: 349000,
                image: "Aegis.jpg",
              ),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "VGOD",
                    description: "Vape VGOD dianggap senagai salah satu brand vapor terbaik saat ini.",
                    price: 699000,
                    image: "Vgod.jpg",
                  ),
                ));
              },
              child: ProductBox(
                name: "VGOD",
                description: "Vape VGOD dianggap senagai salah satu brand vapor terbaik saat ini.",
                price: 699000,
                image: "Vgod.jpg",
              ),
            ),
          ],
        ));
  }
}

//menggunakan  widget  StatelessWidget
class ProductBox extends StatelessWidget {
//deklarasi  variabel  yang  diterima  dari  MyHomePage
  ProductBox({Key key, this.name, this.description, this.price, this.image})
      : super(key: key);
//menampung  variabel  yang  diterima  untuk  dapat  digunakan  pada  class  ini
  final String name;
  final String description;
  final int price;
  final String image;

  Widget build(BuildContext context) {
//menggunakan  widget  container
    return Container(
//padding
        padding: EdgeInsets.all(2),
        //  height:  120,
        //menggunakan  widget  card
        child: Card(
            //membuat  tampilan  secara  horisontal  antar  image  dan  deskripsi
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //children  digunakan  untuk  menampung  banyak  widget
                children: <Widget>[
              Image.asset(
                "assets/appimages/" + image,
                width: 150,
              ),
              Expanded(
                  //child  digunakan  untuk  menampung  satu  widget
                  child: Container(
                      padding: EdgeInsets.all(5),
                      //membuat  tampilan  secara  vertikal
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //ini  isi  tampilan  vertikal  tersebut
                        children: <Widget>[
                          //menampilkan  variabel  menggunakan  widget  text
                          Text(this.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          Text(this.description),
                          Text(
                            "Harga:  " + this.price.toString(),
                            style: TextStyle(color: Colors.red),
                          ),
                          //menampilkan  widget  icon    dibungkus  dengan  row
                          Row(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                ],
                              )
                            ],
                          )
                        ],
                      )))
            ])));
  }
}
