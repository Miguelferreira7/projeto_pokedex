import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

// class PokemonArgumentsCard {
//   PokemonArgumentsCard({
//     required this.pokeimage,
//     required this.pokename,
//     required this.pokeNumber,
//   });
//
//   final String? pokeimage;
//   final String? pokename;
//   final String? pokeNumber;
// }

class PokemonCard extends StatelessWidget {
  const PokemonCard({
    Key? key,
    required this.pokeimage,
    required this.pokename,
    required this.pokeNumber,
    required this.primaryColor,
    required this.pokeHeight,
    required this.pokeWidth,
  }) : super(key: key);

  final String? pokeimage;
  final String? pokename;
  final String? pokeNumber;
  final String? pokeHeight;
  final String? pokeWidth;
  final Color? primaryColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${pokename}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        titleSpacing: 20,
        backgroundColor: primaryColor,
        elevation: 0,
        actions: [
          Container(
            padding: EdgeInsets.fromLTRB(5, 20, 20, 5),
            child: Text('#${pokeNumber}',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
      body: Card(
        margin: EdgeInsets.zero,
        child: Container(
          color: Colors.transparent,
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 25, 10, 20),
                height: MediaQuery.of(context).size.height * 1,
                width: MediaQuery.of(context).size.width * 1,
                alignment: Alignment.center,
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        border:
                            Border.all(color: Colors.transparent, width: 2.5),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Text("?????",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 12),
                        child: Text(
                          "Informações Especiais",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              child: Text('${pokeWidth}',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              padding: EdgeInsets.fromLTRB(0, 0, 5, 5),
                            ),
                            Container(
                              child: Text('Peso',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400)),
                              padding: EdgeInsets.fromLTRB(0, 0, 5, 5),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(50, 0, 5, 5),
                              child: Text('${pokeHeight}',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(50, 0, 5, 5),
                              child: Text('Altura',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400)),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(0),
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: primaryColor,
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.04,
                right: MediaQuery.of(context).size.width / 4,
                child: Image.network(
                  '${pokeimage}',
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 0.4,
                  scale: 0.03,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
