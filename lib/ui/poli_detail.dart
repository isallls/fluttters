import 'package:flutter/material.dart';
import 'package:kuliahs/ui/poli_page.dart';
import 'package:kuliahs/ui/poli_update_form.dart';
import '../model/poli.dart';

class PoliDetail extends StatefulWidget {
  final Poli poli;

  const PoliDetail({super.key, required this.poli});

  @override
  State<PoliDetail> createState() => _PoliDetailState();
}

class _PoliDetailState extends State<PoliDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("detail poli")),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "Nama Poli : ${widget.poli.namaPoli}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(),
              _tombolHapus(),
              // ElevatedButton(
              //   onPressed: () {},
              //   style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              //   child: const Text("change"),
              // ),
              // ElevatedButton(
              //   onPressed: () {},
              //   style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              //   child: const Text("Hapus"),
              // ),
            ],
          ),
        ],
      ),
    );
  }

  _tombolUbah() {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PoliUpdateForm(
                        poli: widget.poli,
                      )));
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
        child: const Text("ubah"));
  }

  _tombolHapus() {
    return ElevatedButton(
        onPressed: () {
          // AlertDialog();
          AlertDialog alertDialog = AlertDialog(
            content: const Text("Yakin Ingin Menghapus Data Ini?"),
            actions: [
              // Tombol Ya
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => PoliPage()));
                },
                child: const Text("Ya"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Tidak"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
              ),
              // Tombol Batal
            ],
          );
          showDialog(context: context, builder: (context) => alertDialog);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
        ),
        child: const Text("Hapus"));
  }
}
