import 'package:flutter/material.dart';

class HomePageDriver extends StatefulWidget {
  const HomePageDriver({super.key});

  @override
  State<HomePageDriver> createState() => _HomePageDriverState();
}

class _HomePageDriverState extends State<HomePageDriver> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text('home_motorista'),);
  }
}