import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/yubis-logo.png'),
        actions: [
          Container(padding: EdgeInsets.all(10), child: Icon(Icons.search)),
          Container(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.shopping_basket),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            child: Image.asset(
              'assets/banner1.jpeg',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
            ),
          ),
          Column(
            children: [
              Text(
                'Kategori Produk',
                textAlign: TextAlign.start,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      children: [
                        SvgPicture.asset("assets/006-vegetables.svg"),
                        SizedBox(height: 8.0),
                        Text('Sayuran'),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        SvgPicture.asset("assets/033-broccoli.svg"),
                        SizedBox(height: 8.0),
                        Text('Paket'),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        SvgPicture.asset("assets/035-apple.svg"),
                        SizedBox(height: 8.0),
                        Text('Buahan'),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        SvgPicture.asset("assets/013-flour.svg"),
                        SizedBox(height: 8.0),
                        Text('Karbohidrat'),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Column(
                      children: [
                        SvgPicture.asset("assets/017-fridge.svg"),
                        SizedBox(height: 8.0),
                        Text('Bumbu Dapur'),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        SvgPicture.asset("assets/028-shopping-basket.svg"),
                        SizedBox(height: 8.0),
                        Text('Sembako'),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        SvgPicture.asset("assets/011-fish.svg"),
                        SizedBox(height: 8.0),
                        Text('Protein'),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        SvgPicture.asset("assets/002-shopping.svg"),
                        SizedBox(height: 8.0),
                        Text('Makanan Sehat'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/pr1.jpeg')),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/pr2.jpeg')),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/pr3.jpeg')),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
