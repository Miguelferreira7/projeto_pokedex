import 'package:flutter/material.dart';
import 'package:pokedex/src/models/pokemon.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pokedex/src/screens/card_pokemon.dart';
import 'package:pokedex/src/screens/loading_page.dart';

class ExplorePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: FutureBuilder<List<Pokemon>>(
        future: _apiGET(),
        builder: (context, snapshot) {
          List<Pokemon>? listaDePokemons = snapshot.data;
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              break;
            case ConnectionState.waiting:
              return LoadingPage();
              break;
            case ConnectionState.active:
              break;
            case ConnectionState.done:
              if (snapshot.hasData) {
                return GridView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      final int? _PokeId = listaDePokemons![index].id;
                      final String? _Pokeimage = listaDePokemons[index].img;
                      final String? _Pokename = listaDePokemons[index].name;
                      final String? _PokeNumber = listaDePokemons[index].num;
                      final String? _PokeHeight = listaDePokemons[index].height;
                      final String? _PokeWidth = listaDePokemons[index].weight;
                      final Color? _pokeColor =
                          listaDePokemons[index].baseColor;
                      final Color _colorborder = _pokeColor!;

                      return GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return PokemonCard(
                                pokeimage: _Pokeimage,
                                pokename: _Pokename,
                                pokeNumber: _PokeNumber,
                                primaryColor: _pokeColor,
                                pokeHeight: _PokeHeight,
                                pokeWidth: _PokeWidth,
                              );
                            },
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: _pokeColor.withOpacity(0.8),
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                alignment: Alignment.topRight,
                                padding: EdgeInsets.fromLTRB(3, 2.5, 6, 0),
                                child: Text(
                                  '#${_PokeNumber}',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:
                                      MediaQuery.of(context).size.height * 0.13,
                                  alignment: Alignment.center,
                                  child: Image.network('${_Pokeimage}')),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.043,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: _pokeColor.withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(9),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  '${_Pokename}',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: listaDePokemons?.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 15,
                        mainAxisExtent: 135),
                    padding: EdgeInsets.fromLTRB(7, 5, 7, 5));
              }
              break;
          }
          return Text('Error');
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Sua Pokedex',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pest_control_outlined),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configurações',
          ),
        ],
        onTap: _onItemTapped,
      ),
    );
  }

  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

Future<List<Pokemon>> _apiGET() async {
  List<Pokemon> pokemonsLista = [];
  String url =
      'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';
  final response = await http.get(Uri.parse(url));
  if (response != null) {
    Map<String, dynamic>? map = json.decode(response.body);

    final List<dynamic> result = map?['pokemon'];
    final teste = PokemonList.fromJson(result).pokemons;
    pokemonsLista = teste!;
    print(PokemonList.fromJson(result).pokemons?[1].toString());
    return pokemonsLista;
  } else {
    return pokemonsLista;
  }
}
