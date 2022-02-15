import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _controladorNome = TextEditingController();

  final TextEditingController _controladorSenha = TextEditingController();

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
                "BEM VINDO A SUA POKEDEX!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Padding(padding: EdgeInsets.all(8.0)),
              TextFieldContainer(
                child: TextField(
                  controller: _controladorNome,
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: "Insira aqui seu e-mail",
                    border: InputBorder.none,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(8.0)),
              TextFieldContainer(
                child: TextField(
                  controller: _controladorSenha,
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    labelText: "Insira aqui sua senha",
                    border: InputBorder.none,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(8, 6, 8, 8)),
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                spacing: 55,
                children: [
                  GestureDetector(
                    child: Text("Não possui uma conta? Registre-se!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                    onTap: () =>
                        Navigator.of(context).pushReplacementNamed("/register"),
                  ),
                ],
              ),
              Builder(
                builder: (context) => SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed("/explorePage");
                    },
                    child: Text("Entrar", style: TextStyle(color: Colors.red)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  var child;

  TextFieldContainer({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(9, 2, 2, 3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
      ),
      child: child,
    );
  }
}
