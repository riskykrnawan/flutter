import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dropdownValue = 'Jenis Barang';
  int angka = 0;
  String merk = "", nama = "", deskripsi = "", jenis = "", harga = "";
  TextEditingController controllerMerk = TextEditingController();
  TextEditingController controllerNama = TextEditingController();
  TextEditingController controllerHarga = TextEditingController();
  TextEditingController controllerDeskripsi = TextEditingController();
  TextEditingController controllerJenis = TextEditingController();

  String groupValue = "";
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controllerMerk.dispose();
    controllerNama.dispose();
    controllerHarga.dispose();
    controllerDeskripsi.dispose();
    controllerJenis.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff009688),
        title: Text(
          "Risky Kurniawan",
          style: GoogleFonts.getFont(
            'Hurricane',
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor:const Color.fromARGB(255, 255, 255, 255),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: controllerMerk,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Merk Barang',
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
          

          ElevatedButton(
            onPressed: () {
              setState(() {
                merk = controllerMerk.text;
                nama = controllerNama.text;
                harga = controllerHarga.text;
                deskripsi = controllerDeskripsi.text;
                jenis = dropdownValue;
              });
            },
            child:  Container(
              height: 40,
              alignment: Alignment.center,
              child: Text("Submit"),
            ),
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xff009688),
              
            ),
          ),
          Text("$merk $nama $harga $deskripsi $jenis")
        ],
      ),
    );
  }
}

List<String> radioValue = ['Reel', 'Joran'];