import 'package:bonappetit/models/explore_recipe.dart';
import 'package:flutter/material.dart';
import 'package:bonappetit/components/author_card.dart';
import 'package:bonappetit/components/bonappetit_theme.dart';
class Card2 extends StatelessWidget {
  const Card2({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
            padding: EdgeInsets.all(20),
        constraints: BoxConstraints.expand(width: 400,height: 650),
        decoration: BoxDecoration(
        image: DecorationImage(
        image:AssetImage('assets/images/Smoothie.jpg'),
        fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
          child: Column(
            children:<Widget>[
             const AuthCard(authorName: 'Nermine Hanno', title:'Smoothie Connoisseur', imageProvider:AssetImage('assets/images/chef.png')),
              Expanded(
                child: Stack(
                  children:<Widget> [
                    Positioned(bottom: 16,
                        right: 16,
                        child:Text('Recipe',
                        style:bonappetitTheme.lightTextTheme.headline1 ,) ),
                    Positioned(bottom: 70,
                        left: 16,
                        child:RotatedBox(
                          quarterTurns: 3,
                          child: Text('BLUENERRY SMOOTHIES',
                            style:bonappetitTheme.lightTextTheme.headline1 ,),
                        ) ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
