// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyForm();
}

class _MyForm extends State<MyForm> {
  String dropdownValue = 'Jenis Barang';
  String dropdownColorValue = 'Warna Barang';
  int angka = 0;
  String stok = "", nama = "", deskripsi = "", jenis = "", harga = "", warna = "";
  TextEditingController controllerNama = TextEditingController();
  TextEditingController controllerHarga = TextEditingController();
  TextEditingController controllerStok = TextEditingController();
  TextEditingController controllerDeskripsi = TextEditingController();
  TextEditingController controllerJenis = TextEditingController();
  TextEditingController controllerWarna = TextEditingController();

  String groupValue = "";
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controllerNama.dispose();
    controllerHarga.dispose();
    controllerStok.dispose();
    controllerDeskripsi.dispose();
    controllerJenis.dispose();
    controllerWarna.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 255, 255, 255),
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*.04,
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: controllerNama,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Nama Barang',
                  ),
                ),
              ),
            ],
          ),
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: controllerHarga,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Harga Barang',
                  ),
                ),
              ),
            ],
          ),
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: controllerStok,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Stok Barang',
                  ),
                ),
              ),
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: controllerDeskripsi,
                  maxLines: 3,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Deskripsi Barang',
                  ),
                ),
              ),
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: DropdownButton<String>(
                  value: dropdownValue,
                  
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),

                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },

                  items: <String>['Jenis Barang', 'Reel', 'Joran']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: DropdownButton<String>(
                  value: dropdownColorValue,
                  
                  icon: const Icon(Icons.arrow_downward),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),

                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownColorValue = newValue!;
                    });
                  },

                  items: <String>['Warna Barang', 'Merah', 'Kuning', 'Hijau']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 30, right: 25, left: 25),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
                ),
                primary: Colors.blueAccent,
              ),
              onPressed: () {
                setState(() {
                  nama = controllerNama.text;
                  harga = controllerHarga.text;
                  stok = controllerStok.text;
                  deskripsi = controllerDeskripsi.text;
                  jenis = dropdownValue;
                  warna = dropdownColorValue;
                });
              },
              child:  Container(
                height: 40,
                alignment: Alignment.center,
                child: Text("Submit"),
              ),
            ),
          ),
          Text("$nama $harga $stok $deskripsi $jenis $warna ")
        ],
      ),
    );
  }
}

List<String> radioValue = ['Reel', 'Joran'];