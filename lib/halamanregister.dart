import 'package:flutter/material.dart';
import 'package:multiple_login/home.dart';

class DesainHalamanRegist extends StatefulWidget {
  const DesainHalamanRegist({Key? key}) : super(key: key);

  @override
  State<DesainHalamanRegist> createState() => _DesainHalamanRegist();
}

class _DesainHalamanRegist extends State<DesainHalamanRegist> {
  TextEditingController cUser = TextEditingController();
  TextEditingController cPass = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Silahkan Regist'),
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
                  color: Color.fromARGB(255, 255, 209, 2),
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
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Beranda(),
                              ),
                              (Route) => false);
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        obscureText: false,
                        controller: cPass,
                        decoration: InputDecoration(
                            labelText: ' Email',
                            hintText: 'Log in Email',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 1),
                              borderRadius: BorderRadius.circular(20),
                            )),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Email Masih Kosong';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {}
                        },
                        child: Text("Regist"),
                      )
                    ],
                  )),
            ),
          )),
    );
  }
}
