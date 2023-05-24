import 'package:flutter/material.dart';

class MyLuas extends StatefulWidget {
  const MyLuas({super.key});

  @override
  State<MyLuas> createState() => _MyLuasState();
}

class _MyLuasState extends State<MyLuas> {
  TextEditingController vNilaiPanjangController = TextEditingController();
  TextEditingController vNilaiLebarController = TextEditingController();
  TextEditingController vNilaiHasilController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hitung Luas Persegi Panjang"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              controller: vNilaiPanjangController,
              decoration: const InputDecoration(
                  labelText: "Input Nilai Panjang",
                  border: OutlineInputBorder(),
                  suffix: Text("cm")),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              controller: vNilaiLebarController,
              decoration: const InputDecoration(
                  labelText: "Input Nilai Lebar",
                  border: OutlineInputBorder(),
                  suffix: Text("cm")),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  int hasil = int.parse(vNilaiPanjangController.text) *
                      int.parse(vNilaiLebarController.text);
                  vNilaiHasilController.text = hasil.toString();
                },
                child: const Text("Hitung")),
            const SizedBox(
              height: 40,
            ),
            TextField(
              controller: vNilaiHasilController,
              readOnly: true,
              decoration: const InputDecoration(
                  labelText: "Hasil",
                  border: OutlineInputBorder(),
                  suffix: Text("cm")),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    vNilaiPanjangController.clear();
    vNilaiLebarController.clear();
    vNilaiHasilController.clear();
    super.dispose();
  }
}
