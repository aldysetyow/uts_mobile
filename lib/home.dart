import 'package:flutter/material.dart';
import 'package:multiple_login/form_mhs.dart';
import 'package:multiple_login/inputdata.dart';
import 'package:multiple_login/profil.dart';

void main() => runApp(Beranda());

class Beranda extends StatefulWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rolling Apps Page"),
        backgroundColor: const Color.fromARGB(255, 255, 192, 2),
      ),

      body: ListView.builder(
        // itemcount adalah total panjang data yang ingin ditampilkan
        itemCount: 15,

        // itembuilder adalah bentuk widget yang akan ditampilkan, wajib menggunakan 2 parameter.
        itemBuilder: (context, index) {
          //padding digunakan untuk memberikan jarak bagian atas listtile agar tidak terlalu mepet
          //menggunakan edgeInsets.only untuk membuat jarak hanya pada bagian atas saja
          return Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),

            //listtile adalah widget yang disediakan flutter berisi 3 properti yang kita pakai
            //properti: leading, title, dan subtitle. di dalam setiap properti kalian bebas melakukan customisasi
            child: ListTile(
              leading: Image.network(
                "https://th.bing.com/th/id/OIP.1Agj-1nuHP5uL5I-KwRTXgHaFj?w=228&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
              ),
              title: Text(
                "KAMPUS MERDEKA",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                'Kampus Merdeka adalah salah satu bagian kebijakan Merdeka Belajar yang di canangkan oleh Menteri Pendidikan,Kebudayaan,Riset dan,Teknologi',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          );
        },
      ),
      //memberikan button garis tiga disebelah kiri appbar
      //jika ditekan akan menjalankan widget builddrawer
      drawer: Drawer(
        //membuat list,
        //list digunakan untuk melakukan scrolling jika datanya terlalu panjang
        child: ListView(
          padding: EdgeInsets.zero,
          //di dalam listview ini terdapat beberapa widget drawable
          children: [
            UserAccountsDrawerHeader(
              //membuat gambar profil
              currentAccountPicture: Image(
                  image: NetworkImage(
                      "https://th.bing.com/th/id/OIP.scExuNqSeL_zvoAQbH0gWAHaHa?w=212&h=213&c=7&r=0&o=5&dpr=1.3&pid=1.7")),
              //membuat nama akun
              accountName: Text("Pengguna"),
              //membuat nama email
              accountEmail: Text("ig: teknikinformatia@gmail.com"),
              //memberikan background
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://th.bing.com/th/id/OIP.afrqa2Rh5tbeotNdoTNfkAHaE8?w=272&h=181&c=7&r=0&o=5&dpr=1.3&pid=1.7"),
                      fit: BoxFit.cover)),
            ),
            //membuat list menu
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Beranda"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Beranda()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text("Mahasiswa"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Mahasiswa()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text("Tambah Mahasiswa"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => form_mhs()));
              },
            ),

            ListTile(
              leading: Icon(Icons.info),
              title: Text("Tentang"),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Profil()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

//widget ini adalah isi dari sidebar atau drawer
