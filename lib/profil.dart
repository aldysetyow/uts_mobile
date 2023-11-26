import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyProfil());

class MyProfil extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Profil(),
    );
  }
}

class Profil extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile"),
        backgroundColor: Color.fromARGB(255, 251, 255, 0),
      ),
      body: Center(
        child: Text('Copyright By Aldy Setyo Wibowo| Firman Maulana'),
      ),
    );
  }
}
