import 'package:flutter/material.dart';

class Operasyon {
  String? name;
  int? price;

  Operasyon({required this.name, required this.price});

  static map(DropdownMenuItem<String> Function(String deger) param0) {}
}

List<Operasyon> sampleOperasyon = [
  Operasyon(name: "Diş Teli", price: 10000),
  Operasyon(name: "İmplant", price: 2000),
  Operasyon(name: "Diş Beyazlatma", price: 6000),
  Operasyon(name: "Kanal Tedavisi", price: 15000),
  Operasyon(name: "Dolgu", price: 1000),
  Operasyon(name: "Diş Eti Çekimi", price: 3000),
  Operasyon(name: "Diş Kaplama", price: 4000)
];
