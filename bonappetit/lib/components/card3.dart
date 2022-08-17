import 'package:bonappetit/models/explore_recipe.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bonappetit/components/bonappetit_theme.dart';
class Card3 extends StatelessWidget {
  const Card3 ({Key? key, }) : super(key: key);

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
              image:AssetImage('assets/images/roman.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          child: Stack(children:<Widget> [
            Container(
              decoration: BoxDecoration(
                color:Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.all(Radius.circular(20.0))
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children:<Widget> [
                    Icon(Icons.book,color: Colors.white,size:40),
                    const SizedBox(height: 8,),
                    Text('Recipe Trends',style: bonappetitTheme.darkTextTheme.headline2,),
                    const SizedBox(height: 30,),
                    Center(
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        spacing: 12,
                        children:<Widget> [
                          Chip(label: Text('Healthy',style: bonappetitTheme.darkTextTheme.bodyText1,),
                          backgroundColor: Colors.black.withOpacity(0.7),
                          onDeleted: (){
                            print('delete');
                          },),
                          Chip(label: Text('Veagan',style: bonappetitTheme.darkTextTheme.bodyText1,),
                            backgroundColor: Colors.black.withOpacity(0.7),
                            onDeleted: (){
                              print('delete');
                            },),
                          Chip(label: Text('Carrots',style: bonappetitTheme.darkTextTheme.bodyText1,),
                            backgroundColor: Colors.black.withOpacity(0.7),
                            onDeleted: (){
                              print('delete');
                            },),
                          Chip(label: Text('Roman',style: bonappetitTheme.darkTextTheme.bodyText1,),
                            backgroundColor: Colors.black.withOpacity(0.7),
                            onDeleted: (){
                              print('delete');
                            },),
                          Chip(label: Text('Healthy',style: bonappetitTheme.darkTextTheme.bodyText1,),
                            backgroundColor: Colors.black.withOpacity(0.7),
                            onDeleted: (){
                              print('delete');
                            },),
                          Chip(label: Text('Greens',style: bonappetitTheme.darkTextTheme.bodyText1,),
                            backgroundColor: Colors.black.withOpacity(0.7),
                            onDeleted: (){
                              print('delete');
                            },),
                          Chip(label: Text('Wheat',style: bonappetitTheme.darkTextTheme.bodyText1,),
                            backgroundColor: Colors.black.withOpacity(0.7),
                            onDeleted: (){
                              print('delete');
                            },),
                          Chip(label: Text('Mint',style: bonappetitTheme.darkTextTheme.bodyText1,),
                            backgroundColor: Colors.black.withOpacity(0.7),
                            onDeleted: (){
                              print('delete');
                            },),
                          Chip(label: Text('Lemon',style: bonappetitTheme.darkTextTheme.bodyText1,),
                            backgroundColor: Colors.black.withOpacity(0.7),
                            onDeleted: (){
                              print('delete');
                            },),
                          Chip(label: Text('Apples',style: bonappetitTheme.darkTextTheme.bodyText1,),
                            backgroundColor: Colors.black.withOpacity(0.7),
                            onDeleted: (){
                              print('delete');
                            },),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],),
        ),
      ),
    );
  }
}
