import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("BIODATA"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(children: [Icon(Icons.person), Text("BIODATA")]),
          Text("NAMA : Ramaditya Maulana "),
          Text("NIM : 230101032"),
          Text("Kelas : SI 23A1"),
          Text("Prodi : Sistem Informasi"),
          Text("Hobi : Melamun"),
        ],
      ),
    );
}
}