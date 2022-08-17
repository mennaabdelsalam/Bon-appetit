import 'package:flutter/material.dart';
import 'components.dart';
import 'package:bonappetit/models/models.dart';
class FriendPostListview extends StatelessWidget {
  final List<Post> friendPosts;
  const FriendPostListview({required Key? key,required  this.friendPosts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 16,top: 0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
   Text('Social chels 👨‍🍳',
     style: Theme.of(context).textTheme.headline1,),
          const SizedBox(height: 16,),
          ListView.separated(primary: false,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context,index){
            final post=friendPosts[index];
            return FreindPostTile(key: key, post: post);
          }, separatorBuilder: (context,index){
            return const SizedBox( height: 16,);
          }, itemCount: friendPosts.length,)
      ],),
    );
  }
}
