import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokedex/src/screens/card_pokemon.dart';
import 'package:pokedex/src/screens/explorePage.dart';
import 'package:pokedex/src/screens/homePage.dart';
import 'package:pokedex/src/screens/loading_page.dart';
import 'package:pokedex/src/screens/login/login.dart';
import 'package:pokedex/src/screens/login/register.dart';

import 'http/webclient.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Pokedex',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        initialRoute: '/explorePage',
        routes: {
          '/': (context) => Login(),
          '/login': (context) => Login(),
          '/register': (context) => RegisterScreen(),
          '/home': (context) => homePage(),
          '/explorePage': (context) => ExplorePage(),
        });
  }
}
