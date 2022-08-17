import 'package:flutter/material.dart';
import 'package:bonappetit/models/models.dart';
import 'package:bonappetit/api/mock_fooderlich_service.dart';
import 'package:bonappetit/components/components.dart';
class FreindPostTile extends StatelessWidget {
  const FreindPostTile({ required Key? key,required this.post}) : super(key: key);
    final Post post; //ba5odha men api
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleImage(imageradius: 20, imageProvider: AssetImage(post.profileImageUrl.toString()),
        ),
        const SizedBox(width: 16,),
        Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [Text(post.comment.toString()),
          Text('${post.timestamp} mins ago',
              style: const TextStyle(fontWeight: FontWeight.w700))],
        )
        )
      ],
    );
  }
}
