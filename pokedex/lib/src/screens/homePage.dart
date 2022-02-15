// ignore: file_names
import 'package:flutter/material.dart';
import 'package:pokedex/src/components/bottomBar.dart';
import 'package:pokedex/src/models/pokemon.dart';

class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _homePageState();
}

class _homePageState extends State<homePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Card(),
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
        currentIndex: 0,
      ),
    );
  }

  CustomScrollView buildCustomScrollView() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: false,
          snap: true,
          floating: true,
          expandedHeight: 180,
          leading: FlexibleSpaceBar(
            titlePadding: EdgeInsets.all(15),
            centerTitle: true,
            title: Text(
              "Bem Vindo a Pokedex, MIGUEL!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
          leadingWidth: 150,
          toolbarHeight: 180,
          actions: <Widget>[
            Image(
              height: 150,
              width: 150,
              image: AssetImage('assets/Pokeball.png'),
              color: Colors.grey,
            )
          ],
        ),
      ],
    );
  }
}
