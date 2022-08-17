import 'package:bonappetit/components/today_recipe_list_view.dart';
import 'package:flutter/material.dart';
import 'package:bonappetit/api/mock_fooderlich_service.dart';
import 'package:bonappetit/models/explore_data.dart';
import 'package:bonappetit/components/card1.dart';
import 'package:bonappetit/components/card2.dart';
import 'package:bonappetit/components/card3.dart';
import 'package:bonappetit/components/author_card.dart';
import 'package:bonappetit/components/bonappetit_theme.dart';
import 'package:bonappetit/components/circle_image.dart';
import 'package:bonappetit/components/components.dart';

class ExploreScreen extends StatelessWidget {
  final mockservice=MockFooderlichService();

   ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return FutureBuilder<ExploreData>(
        future: mockservice.getExploreData(),
        builder: (context,snapshot) {
      //todo
           if(snapshot.connectionState==ConnectionState.done){
             //todo
             return ListView(
               scrollDirection: Axis.vertical,
               children: [
                // TodayRecipeListView(recipes: snapshot.data!.todayRecipes),
                 Card1(),
                 const SizedBox(height: 16,),
                 Container(height: 400,color: Colors.amber,)
                 //FriendPostListview(key: key, friendPosts:snapshot.data!.friendPosts),
                // FreindPostTile(key: key,),
               ],
             );
          }else{
             return Center(
               child: CircularProgressIndicator(),);
           }
        }
    );
  }
}

