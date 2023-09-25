import 'package:flutter/material.dart';
import 'package:tugas_3/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  //ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _NIMController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  //ignore:prefer_typing_uninitialized_variables
  var namauser;

  void _saveNIM() async {
    //inisialisasi Share Preferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //simpan NIM ke local storage
    prefs.setString('NIM', _NIMController.text);
  }

  _showInput(namacontroller, placeholder, isPassword) {
    return TextField(
      controller: namacontroller,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: placeholder,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none,
        ),
        fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
        filled: true,
        prefixIcon: Icon(isPassword
            ? Icons.lock
            : Icons.person), // Ubah icon untuk NIM dan password
      ),
    );
  }

  _showDialog(pesan, alamat) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(pesan),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => alamat,
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Disini'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Tambahkan tulisan di atas form
            Text(
              'Masukkan NIM dan password Anda',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 10),
            _showInput(_NIMController, 'NIM', false),
            SizedBox(height: 10),
            _showInput(_passwordController, 'Password', true),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (_NIMController.text == 'H1D021044' &&
                    _passwordController.text == 'admin') {
                  //save NIM
                  _saveNIM();
                  //show alert
                  _showDialog('Login Berhasil', const HomePage());
                } else {
                  _showDialog('NIM dan Password Salah', const LoginPage());
                }
              },
              child: const Text('Login'),
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                padding: EdgeInsets.symmetric(vertical: 16),
                backgroundColor: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
