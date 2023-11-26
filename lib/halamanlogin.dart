import 'package:flutter/material.dart';
import 'package:multiple_login/home.dart';
import './halamanregister.dart';

class DesainHalamanLogin extends StatefulWidget {
  const DesainHalamanLogin({Key? key}) : super(key: key);

  @override
  State<DesainHalamanLogin> createState() => _DesainHalamanLogin();
}

class _DesainHalamanLogin extends State<DesainHalamanLogin> {
  TextEditingController cUser = TextEditingController();
  TextEditingController cPass = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Halaman Login'),
        backgroundColor: Color.fromARGB(255, 61, 209, 66),
      ),
      body: Form(
          key: formKey,
          child: Center(
            child: Container(
              width: 300,
              height: 250,
              child: Card(
                  elevation: 10,
                  shadowColor: Colors.red,
                  color: const Color.fromARGB(255, 61, 209, 66),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: cUser,
                        decoration: InputDecoration(
                            labelText: 'User Name',
                            hintText: ' User Name',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 4),
                              borderRadius: BorderRadius.circular(20),
                            )),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'User Masih Kosong';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        obscureText: true,
                        controller: cPass,
                        decoration: InputDecoration(
                            labelText: ' Password',
                            hintText: 'input Password',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1),
                              borderRadius: BorderRadius.circular(20),
                            )),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Password User Masih Kosong';
                          }
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Beranda(),
                              ),
                              (Route) => false);

                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {}
                        },
                        child: Text("LOGIN"),
                      ),
                      TextButton(
                        child: Text(
                          "Belum Punya Akun ? Daftar Sekarang!",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DesainHalamanRegist()));
                        },
                      )
                    ],
                  )),
            ),
          )),
    );
  }
}
