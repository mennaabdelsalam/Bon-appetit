import 'package:flutter/material.dart';
import 'package:bonappetit/components/components.dart';
import 'package:bonappetit/components/bonappetit_theme.dart';
import 'package:bonappetit/models/explore_recipe.dart';
import 'package:bonappetit/models/models.dart';

class TodayRecipeListView extends StatelessWidget{
   final List <ExploreRecipe>  recipes; //from api json file
   TodayRecipeListView({Key? key,required this.recipes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16,right: 16,top: 16),
     child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget> [
        Text( '  Recipes of the day 🥪 ',style: Theme.of(context).textTheme.headline1,),
        SizedBox(height: 16,),
        Container(height: 400,
         color: Colors.transparent,
          child: ListView.separated(scrollDirection:Axis.horizontal,//we have made a listview
              itemCount: recipes.length,
              itemBuilder: (context,index){ //contains items
               final recipe=recipes[index]; //defining instance of the recipies
               return buildCard(recipe); //return
              }, separatorBuilder: (context,index){
            return const SizedBox(width: 16);
              },),
        )
      ],
     )
    );
  }

  Widget buildCard( ExploreRecipe recipe){
    if(recipe.cardType==RecipeCardType.card1){
      return Card1();
    }
    if(recipe.cardType==RecipeCardType.card2){
      return Card2();
    }
    if(recipe.cardType==RecipeCardType.card3){
      return Card3();
    }else{throw Exception('this card doesn\'t exist yet');
  }
}
}
