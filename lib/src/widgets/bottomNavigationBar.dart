import 'package:flutter/material.dart';

class BottonNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      backgroundColor: Color(0xFFf4511e),
      selectedLabelStyle: TextStyle(color: Colors.white),
      unselectedLabelStyle: TextStyle(color: Colors.white),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.check_circle,
            color: Colors.white,
          ),
          label: 'Diária',
          //backgroundColor: Color(0xFFf4511e),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.list_alt,
            color: Colors.white,
          ),
          label: 'Formulario',
          //backgroundColor: Color(0xFFf4511e),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.people,
            color: Colors.white,
          ),
          label: 'Suspeitos',
          //backgroundColor: Color(0xFFf4511e),
        ),
      ],
    );
  }
}
