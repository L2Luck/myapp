import 'package:flutter/material.dart';
import 'login_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, required this.namaEmail});
    final String namaEmail;

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Profil"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(children: [Icon(Icons.person), Text("Profil")]),
          Text("NAMA : Ramaditya Maulana "),
          Text("Email : $namaEmail"),
          Text("NIM : 230101032"),
          Text("Kelas : SI 23A1"),
          Text("Prodi : Sistem Informasi"),
          Text("Hobi : Melamun"),
        ],
      ),
    );
}
}
