import 'package:flutter/material.dart';

class MyVolume extends StatefulWidget {
  const MyVolume({super.key});

  @override
  State<MyVolume> createState() => _MyVolumeState();
}

class _MyVolumeState extends State<MyVolume> {
  TextEditingController vNilaiPanjangController = TextEditingController();
  TextEditingController vNilaiLebarController = TextEditingController();
  TextEditingController vNilaiTinggiController = TextEditingController();
  TextEditingController vNilaiHasilController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hitung Volume Kubus"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              controller: vNilaiPanjangController,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.emoji_events_rounded),
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
                  prefixIcon: Icon(Icons.emoji_events_rounded),
                  labelText: "Input Nilai Lebar",
                  border: OutlineInputBorder(),
                  suffix: Text("cm")),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              controller: vNilaiTinggiController,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.emoji_events_rounded),
                  labelText: "Input Nilai Tinggi",
                  border: OutlineInputBorder(),
                  suffix: Text("cm")),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                verticalDirection: VerticalDirection.up,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      num hasil = int.parse(vNilaiPanjangController.text) *
                          int.parse(vNilaiLebarController.text) *
                          int.parse(vNilaiTinggiController.text);
                      vNilaiHasilController.text = hasil.toString();
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        padding: const EdgeInsets.fromLTRB(30, 20, 30, 20)),
                    child: const Text("Hitung"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      vNilaiPanjangController.clear();
                      vNilaiLebarController.clear();
                      vNilaiTinggiController.clear();
                      vNilaiHasilController.clear();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      // textStyle: const TextStyle(color: Colors.white),
                      // onPrimary: Colors.black87,
                      // primary: Colors.grey[300],
                      minimumSize: const Size(88, 36),
                      padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                    child: const Text("Hapus"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // background
                      onPrimary: Colors.black,
                      padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                    child: const Text("Keluar"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            TextField(
              readOnly: true,
              controller: vNilaiHasilController,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.list),
                  labelText: "Hasil",
                  border: OutlineInputBorder(),
                  suffix: Text("cm")),
            ),
          ],
        ),
      ),
    );
  }
}
