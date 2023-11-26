import 'package:flutter/material.dart';
import 'package:multiple_login/inputdata.dart';

void main() {
  runApp(form_mhs());
}

class form_mhs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tambah Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyForm(),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? name;
  String? gender;
  String? religion;
  String? education;

  List<String> genderOptions = ['Teknik Informatika', 'Teknik Industri'];
  List<String> religionOptions = ['TIF Purwakarta', 'TI Purwakarta'];
  List<String> educationOptions = [
    'Elementary School',
    'Junior High School',
    'Senior High School',
    'Bachelor',
    'Master',
    'Doctorate'
  ];

  String result = '';

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      setState(() {
        result =
            'Name: $name\n\nGender: $gender\n\nReligion: $religion\n\nEducation: $education';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Mahasiswa'),
        backgroundColor: Color.fromARGB(
          255,
          255,
          255,
          05,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nama',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Nama Jangan Kosong';
                  }
                  return null;
                },
                onSaved: (value) {
                  name = value;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'NPM',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'NPM Jangan Kosong';
                  }
                  return null;
                },
                onSaved: (value) {
                  name = value;
                },
              ),
              SizedBox(height: 20.0),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Jurusan',
                ),
                value: gender,
                items: genderOptions.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    gender = newValue;
                  });
                },
              ),
              SizedBox(height: 20.0),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Kelas',
                ),
                value: religion,
                items: religionOptions.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    religion = newValue;
                  });
                },
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Mahasiswa()));
                },
                child: Text('Simpan'),
              ),
              SizedBox(height: 20.0),
              Text(
                result,
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
