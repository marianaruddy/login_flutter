// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  String userType = 'passageiro';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'xBus',
                style: TextStyle(
                  color: Colors.teal.shade100,
                  fontSize: 70,
                  shadows: [
                    Shadow(
                      color: Colors.white, 
                      offset: Offset(0.0, 0.0),
                      blurRadius: 8.0,
                    ),
                    Shadow(
                      color: Colors.teal.shade900, 
                      offset: Offset(0.0, 0.0),
                      blurRadius: 3.0,
                    ),
                  ],
                ),
              ),
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(200),
              //   child: Image.asset(
              //     '../assets/logo.jpg',
              //     height: 100,
              //   ),
              // ),f
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0, right: 16.0, top: 8.0, bottom: 8.0,
                  ),
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (text) {
                          email = text;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                        ),
                      ),
                      TextField(
                        onChanged: (text) {
                          password = text;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Senha',
                        ),
                      ),
                      SizedBox(height: 16),
                      ListTile(
                        dense: true,
                        title: Text('sou passageiro'),
                        leading: Radio(
                          value: 'passageiro', 
                          groupValue: userType, 
                          onChanged: (value) {
                            setState(() {
                              userType = 'passageiro';
                            });
                          },
                        ),
                      ),
                      ListTile(
                        dense: true,
                        title: Text('sou motorista'),
                        leading: Radio(
                          value: 'motorista', 
                          groupValue: userType, 
                          onChanged: (value) {
                            setState(() {
                              userType = 'motorista';
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                margin: const EdgeInsets.only(
                  left: 5, right: 5,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    if (email != '' && password != '') {
                      switch (userType) {
                        case 'passageiro':
                          Navigator.of(context).pushNamed('/home_passageiro');
                          break;
                        case 'motorista':
                          Navigator.of(context).pushNamed('/home_motorista');
                          break;
                        default:
                          Navigator.of(context).pushNamed('/');
                      }
                    }
                    else {
                      print('error');
                    }
                  }, 
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Entrar', 
                      textAlign: TextAlign.center,
                    ),
                    
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('../assets/backgroud_login.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
                ),
              ),
            ),
          ),
          Container(color: Colors.teal.withOpacity(0.3),),
          _body()
        ],
      ),
    );
  }
}