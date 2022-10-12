// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:login_flutter/home_page_driver.dart';
import 'package:login_flutter/home_page_passanger.dart';
import 'package:login_flutter/login_page.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login': (context) => LoginPage(),
        '/home_passageiro': (context) => HomePagePassanger(),
        '/home_motorista': (context) => HomePageDriver(),
      },
      initialRoute: '/login',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
    );
  }
}