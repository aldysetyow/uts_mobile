import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Mahasiswa',
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: Mahasiswa(),
    );
  }
}

class Mahasiswa extends StatefulWidget {
  @override
  _myMahasiswa createState() => _myMahasiswa();
}

class _myMahasiswa extends State<Mahasiswa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Mahasiswa"),
        backgroundColor: Color.fromARGB(255, 255, 230, 1),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: <DataColumn>[
            DataColumn(label: Text("Nama")),
            DataColumn(label: Text("NPM")),
            DataColumn(label: Text("Kelas")),
            DataColumn(label: Text("Jurusan")),
          ],
          rows: <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text("Aldy Setyo Wibowo")),
                DataCell(Text("21552011454")),
                DataCell(Text("TIF 21 A Purwakarta")),
                DataCell(Text("Teknik Informatika")),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text("Firman Maulana")),
                DataCell(Text("21552011464")),
                DataCell(Text("TIF 21 B Purwakarta")),
                DataCell(Text("Teknik Informatika")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
