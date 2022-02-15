import 'package:flutter/material.dart';

class BottomNavigation {
  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
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
    );
  }
}
