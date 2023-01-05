import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:meuapp/shared/action_button.dart';
import 'package:meuapp/shared/shared.dart';
import 'package:meuapp/view/cadastro.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

final TextEditingController _logincontroller = TextEditingController();
final TextEditingController _senhacontroller = TextEditingController();

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login screen'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const cadastro()),
              );
            },
            icon: const Icon(Icons.adb_rounded),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Share(
              title: 'Login',
              controller: _logincontroller,
            ),
            Share(
              title: 'Senha',
              controller: _senhacontroller,
              isPassword: true,
            ),
            ActionButton(
              title: 'Entrar',
              buttonAction: loginFunction,
            ),
          ],
        ),
      ),
    );
  }

  loginFunction() {
    if (_logincontroller.text == 'admin' && _senhacontroller.text == 'admin') {
      Fluttertoast.showToast(
          msg: 'Login Sucess', backgroundColor: Colors.green);
    } else {
      Fluttertoast.showToast(
          msg: 'Login Sucess', backgroundColor: Colors.red);
    }
  }
}
