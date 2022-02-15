import 'package:flutter/material.dart';

class ConfigurationScreen extends StatefulWidget {
   ConfigurationScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ConfigurationScreenState();
}

class _ConfigurationScreenState extends State<ConfigurationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Em produção. :)'),
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
        currentIndex: 2,
      ),
    );
  }

  int _selectedIndex = 0;

   void _onItemTapped(int index) {
     setState(() {
       _selectedIndex = index;
     });
   }
}
