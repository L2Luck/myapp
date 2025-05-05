import 'package:flutter/material.dart';
import 'home_screen.dart';

class LoginProfil extends StatefulWidget {
  LoginProfil({super.key});
  TextEditingController emailProfil = TextEditingController();

  @override
  State<LoginProfil> createState() => _LoginProfilState();
}

class _LoginProfilState extends State<LoginProfil> {
  bool statusPassword = true;

  tampilPassword(){
    setState(() {
      statusPassword = !statusPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField( controller: widget.emailProfil,
            decoration: InputDecoration(
              labelText: 'Email',
              prefixIcon: Icon(Icons.mail),
            ),
          ),
          TextField(
            obscureText: statusPassword,
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Enter Your Password',
              prefixIcon: Icon(Icons.lock),
              suffixIcon: IconButton(onPressed: () {
                tampilPassword();
              }, icon: Icon(statusPassword ? Icons.visibility_off : Icons.visibility),)
            ),
          ),
          ElevatedButton(onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen(namaEmail: widget.emailProfil.text)),
          );
          }, child: Text('Login')),
        ],
      ),
    );
  }
}