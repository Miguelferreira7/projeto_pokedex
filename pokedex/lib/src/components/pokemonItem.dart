import 'package:flutter/material.dart';

class PokemonItem extends StatelessWidget {
  const PokemonItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: EdgeInsets.all(4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.redAccent),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text("TESTE"),
                  ),
                  Container(
                    child: Text("TESTE"),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    child: Image.asset("Pokeball.png"),
                  )
                ],
              )
            ],
          ),
        ),

    );
  }
}
