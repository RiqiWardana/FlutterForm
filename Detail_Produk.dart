import 'package:flutter/material.dart';

class ProdukDetail extends StatefulWidget {
  final String? KodeProduk;
  final String? NamaProduk;
  final int? Harga;

  const ProdukDetail({Key? key, this.KodeProduk, this.NamaProduk, this.Harga})
      : super(key: key);
  _ProdukDetailState createState() => _ProdukDetailState();
}

class _ProdukDetailState extends State<ProdukDetail> {
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Detail Produk"),
        ),
        body: Column(
            children: [Text("Kode Produk:" + widget.KodeProduk.toString()),
            Text("Nama Produk:${widget.NamaProduk}"),
            Text("Harga Produk:${widget.Harga}"),
            ]),
      );
  }
}
