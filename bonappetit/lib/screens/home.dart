import 'package:bonappetit/components/card1.dart';
import 'package:bonappetit/components/card2.dart';
import 'package:flutter/material.dart';
import 'package:bonappetit/components/card3.dart';
import 'package:bonappetit/components/bonappetit_theme.dart';
import 'package:bonappetit/models/models.dart';
import 'package:bonappetit/models/explore_recipe.dart';
import 'package:bonappetit/screens/explore_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {
  int _selectedIndex=0;
  static List<Widget> pages=<Widget>[
    ExploreScreen(),
    Card2(),
    Card3(),
  ];
  void _onItemTapped(int index){
    setState((){
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title:
      Text('BON APPETIT', style: Theme.of(context).textTheme.headline6),
    ),
      body:pages[_selectedIndex],
      // Center(
      //     child: Text(
      //   'let\' s get cooking',
      //   style: Theme.of(context).textTheme.headline1,
      // )),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon:
          Icon(Icons.explore),
              label: 'Explore'),
          BottomNavigationBarItem(icon:
          Icon(Icons.book),
              label: 'Recipes'),
          BottomNavigationBarItem(icon:
          Icon(Icons.list),
              label: 'To BUY'),
        ],
      ),);
  }
}
