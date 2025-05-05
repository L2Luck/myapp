import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  // Suggested code may be subject to a license. Learn more: ~LicenseLog:1399484634.
  const CartScreen({super.key, required this.jumlahBarang});

  // Suggested code may be subject to a license. Learn more: ~LicenseLog:4199038380.
  final String jumlahBarang;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2786050537.
      appBar: AppBar(title: Text('barang = $jumlahBarang')),
      body: ElevatedButton(onPressed: () {}, child: Text("Kembali")),
    );
  }
}
