import 'package:flutter/material.dart';
import 'package:pokedex/src/models/formsLoginRegister.dart';
import 'package:pokedex/src/models/user.dart';

import 'login.dart';

class RegisterScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return    _RegisterScreenState();

  }
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _passwordcontrollerconfirmation =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.redAccent,
        child: Container(
          padding: EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "NOVO REGISTRO",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Formsregistration(
                nameField: "Insira aqui seu E-mail",
                controller: _emailController,
                icon: Icons.person,
              ),
              Formsregistration(
                nameField: "Insira aqui sua senha",
                controller: _passwordController,
                icon: Icons.person,
              ),
              Formsregistration(
                nameField: "Confirme sua senha",
                controller: _passwordcontrollerconfirmation,
                icon: Icons.person,
              ),
              Padding(padding: EdgeInsets.fromLTRB(8, 6, 8, 8)),
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                spacing: 55,
                children: [
                  Builder(
                    builder: (context) => SizedBox(
                      width: 300,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white)),
                        onPressed: () {
                          _createUser(context);
                        },
                        child:
                            Text("Entrar", style: TextStyle(color: Colors.red)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _createUser(BuildContext context) {
    final String emailAccount = _emailController.text;
    final String passwordAccount = _passwordController.text;
    final List<User> users = [];

    //POR ENQUANTO, ESSE CONTROLE NÃO EXISTE:
    //final String passwordConfirmation = _passwordcontrollerconfirmation.text;

    if (emailAccount != null && passwordAccount != null) {

      final newUser = User(emailAccount, passwordAccount);
      users.add(newUser);
      Navigator.pop(context, newUser);
      debugPrint(users.toString());

    }
  }
}


