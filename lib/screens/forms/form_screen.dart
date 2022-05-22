import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:posttest6_2009106050_riskykurniawan/getx_controller/form_controller.dart';


class MyForm extends StatelessWidget {
  MyForm({Key? key}) : super(key: key);

  final GetxFormController formController = Get.put(GetxFormController());
  final GetxFormController getFormController = Get.find();
  @override
  Widget build(BuildContext context) { 
    var nama = getFormController.nama;
    var harga = getFormController.harga;
    var stok = getFormController.stok;
    var deskripsi = getFormController.deskripsi;
    var jenis = getFormController.jenis;
    var warna = getFormController.warna;
    
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
                  controller: formController.namaEditingController,
                  onChanged: (newValue) {
                    formController.setNama(newValue);
                  },
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
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  onChanged: (newValue) {
                    formController.setHarga(int.parse(newValue));
                  },
                  controller: formController.hargaEditingController,
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
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  controller: formController.stokEditingController,
                  onChanged: (newValue) {
                    formController.setStok(int.parse(newValue));
                  },
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
                  controller: formController.deskripsiEditingController,
                  maxLines: 3,
                  onChanged: (newValue) {
                    formController.setDeskripsi(newValue);
                  },
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Deskripsi Barang',
                  ),
                ),
              ),
            ],
          ),

          Obx(() =>
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: DropdownButton(
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (newValue) {
                  formController.setJenis(newValue.toString());
                },
                items: <String>['Jenis Barang', 'Reel', 'Joran']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                value: formController.jenis.value,
              ),
            )
          ),

          Obx(() =>
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: DropdownButton(
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                items: <String>['Warna Barang', 'Merah', 'Kuning', 'Hijau']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                value: formController.warna.value,
                onChanged: (newValue) { 
                  formController.setWarna(newValue.toString());
                },
              ),
            )
          ),

          Container(
            margin: const EdgeInsets.only(top: 30, right: 25, left: 25),
            child: AnimatedButton(
              text: 'Submit',
              height: 40,
              color: Colors.blueAccent,
              pressEvent: () {
                final snackBar = SnackBar(
                  content: const Text('Barang berhasil ditambahkan!'),
                  action: SnackBarAction(
                    label: 'Batalkan',
                    onPressed: () {
                      // Some code to undo the change.
                    },
                  ),
                );

                ScaffoldMessenger.of(context).showSnackBar(snackBar);

                AwesomeDialog(
                  context: context,
                  animType: AnimType.LEFTSLIDE,
                  headerAnimationLoop: false,
                  dialogType: DialogType.SUCCES,
                  showCloseIcon: true,
                  title: 'Success',
                  desc:
                      """
Nama: $nama 
Harga: $harga
Stok: $stok 
Deskripsi: $deskripsi
Jenis: $jenis
Warna: $warna


berhasil ditambahkan!
                      """,
                  btnOkOnPress: () {
                    debugPrint('OnClcik');
                  },
                  btnOkIcon: Icons.check_circle,
                  onDissmissCallback: (type) {
                    debugPrint('Dialog Dissmiss from callback $type');
                  },
                ).show();
              },
            ),
          ),
        ],
      ),
    );
  }
}
