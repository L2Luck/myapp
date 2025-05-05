import 'package:flutter/material.dart';

class Login2Screen extends StatefulWidget {
  const Login2Screen({super.key});

  @override
  State<Login2Screen> createState() => _Login2ScreenState();
}

class _Login2ScreenState extends State<Login2Screen> {
  bool statusPassword = true;
  bool gantiWarna = true;

  tampilPassword(){
    setState(() {
      statusPassword = !statusPassword;
    });
  }

  gantiColor(){
    setState(() {
      gantiWarna = !gantiWarna;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gantiWarna ? Colors.cyan : Colors.white,
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Email',
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
          ElevatedButton(onPressed: () {}, child: Text('Login')),
          ElevatedButton(onPressed: () {
          gantiColor();
        }, child: Text('Tema')),
        ],
      ),
    );
  }
}