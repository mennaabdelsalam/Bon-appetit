import 'package:flutter/material.dart';
class CircleImage extends StatelessWidget {

 final double imageradius;
 final ImageProvider imageProvider;

  const CircleImage({Key? key,required this.imageradius,required this.imageProvider}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: imageradius,
      child: CircleAvatar(
        radius: imageradius-5,
        backgroundImage: imageProvider,
      ),
    );
  }
}
