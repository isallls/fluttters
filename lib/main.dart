import 'package:flutter/material.dart';
import 'package:kuliahs/ui/beranda.dart';
// import 'ui/poli_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'klinik app',
      debugShowCheckedModeBanner: false,
      home: Beranda(),
    );
  }
}
