import 'package:flutter/material.dart';
import 'package:toko_kue/widget/navbar_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text('Suff Cakery'),
    ),
    bottomNavigationBar: const NavbarWidget(),
    );
  }
}
