import 'package:bonappetit/components/bonappetit_theme.dart';
import 'package:bonappetit/components/circle_image.dart';
import 'package:flutter/material.dart';
import 'package:bonappetit/components/card2.dart';
import 'package:bonappetit/components/circle_image.dart';
class AuthCard extends StatefulWidget {
  final String authorName;
  final String title;
  final ImageProvider imageProvider;

  const AuthCard({Key? key, required this.authorName,required this.title,required this.imageProvider}) : super(key: key);

  @override
  _AuthCardState createState() => _AuthCardState();
}

class _AuthCardState extends State<AuthCard> {
  bool _isFavorited= false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:<Widget>[
        Row(children:<Widget>[
          CircleImage(imageradius:20, imageProvider: widget.imageProvider),
          SizedBox(width: 8,),
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget> [
              Text(widget.authorName,style: bonappetitTheme.lightTextTheme.headline2,),
              Text(widget.title,style: bonappetitTheme.lightTextTheme.headline3,)

          ],)
        ]
        ),
           IconButton(icon:Icon(_isFavorited?Icons.favorite:Icons.favorite_border),
           iconSize: 30,
           color: Colors.red[400],
           onPressed: (){
             setState(() {
               _isFavorited=!_isFavorited;
             });
           },)
        ],
      ),
    );
  }
}
