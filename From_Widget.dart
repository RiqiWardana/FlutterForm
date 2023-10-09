import 'package:flutter/material.dart';
import 'package:belajar_flutter/Detail_Produk.dart';

class ProdukForm extends StatefulWidget {

  const ProdukForm({Key? key}) : super(key: key);
  _ProdukFormState createState() => _ProdukFormState();
}

class _ProdukFormState extends State {
  final _KodeProduktextboxController = TextEditingController();
  final _NamaProduktextboxController = TextEditingController();
  final _HargaProduktextboxController = TextEditingController();

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          title: Center(
            child: Text(
              "Form Produk",
              style: TextStyle(color: const Color.fromARGB(160, 0, 0, 0)),
            ),
          ),
      ),
      body: SingleChildScrollView(child: Column(children: [
        _textBoxKodeProduk(),
        _textBoxNamaProduk(),
        _textBoxHargaProduk(),
        _tombolSimpan()
      ],),),
      ),
    );
  }
  _textBoxKodeProduk(){
    return TextField(
    decoration: const InputDecoration(labelText: "Kode Produk"),
    controller: _KodeProduktextboxController,
    );
  }
  
  _textBoxNamaProduk(){
    return TextField(decoration: const InputDecoration(labelText: "Nama Produk"),controller: _NamaProduktextboxController,);
  }
  
  _textBoxHargaProduk(){
    return TextField(decoration: const InputDecoration(labelText: "Harga"),controller: _HargaProduktextboxController,);
  }

  _tombolSimpan(){
    return ElevatedButton(onPressed: (){
      String KodeProduk = _KodeProduktextboxController.text;
      String NamaProduk = _NamaProduktextboxController.text;
      int Harga = int.parse(_HargaProduktextboxController.text);
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProdukDetail(KodeProduk: KodeProduk,NamaProduk: NamaProduk,Harga: Harga,),));

    }, child: const Text('SIMPAN'));
  }
}

void main() {
  runApp(MaterialApp(home: ProdukForm()));
}