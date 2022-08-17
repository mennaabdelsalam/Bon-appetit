import 'package:bonappetit/models/explore_recipe.dart';
import 'package:flutter/material.dart';
import 'package:bonappetit/components/bonappetit_theme.dart';
class Card1 extends StatelessWidget {
  const Card1({Key? key,}) : super(key: key);
  final String category='Editor\'s Choice';
  final String title ='THE ART OF DOUGH';
  final String description='Learn to make the perfect bread';
  final String chef='Recipes of the day 🥪';
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: EdgeInsets.all(20),
        constraints: BoxConstraints.expand(width: 400,height: 450),
        decoration: BoxDecoration(
          image: DecorationImage(
            image:AssetImage('assets/images/introcard.jpeg'),
                fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Stack(
          children:<Widget> [
            Text(category,style: bonappetitTheme.darkTextTheme.bodyText1,),
            Positioned(child: Text(title,style: bonappetitTheme.darkTextTheme.headline6,)
            ,top:20,),
            Positioned(child: Text(description ,style: bonappetitTheme.darkTextTheme.bodyText1,),
            bottom: 30,
            right:0,),
            Positioned(child: Text(chef,style: bonappetitTheme.darkTextTheme.bodyText1,),
            bottom: 10,
            right:0 ,),

          ],
        ),
      ),
    );
  }
}
