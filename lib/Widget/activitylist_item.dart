import 'package:flutter/material.dart';

class ActivityListItem extends StatelessWidget {

  final String imageUrl;
  final String name;
  final String days;
  final String comment;
  final String reply;
  final String likeText;
  ActivityListItem(
      this.imageUrl,this.name,this.days,this.comment,this.reply,this.likeText,
      );

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 90,
      width: double.infinity,
      child: Card(
        child: Row(
          children: [
            SizedBox(width:20),
            CircleAvatar(backgroundImage: Image.network(imageUrl,fit:BoxFit.cover,).image,),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('John',style: TextStyle(color: Colors.purple),),
                    SizedBox(width: 10,),
                    Text('24 days ago',style: TextStyle(color: Colors.grey),)
                  ],
                ),
                SizedBox(height: 5,),
                Text('Thanks for Posting this'),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.favorite_border,color: Colors.purple,),
                    Text('1',style: TextStyle(color: Colors.purple)),
                    SizedBox(width: 15,),
                    Text('Reply',style: TextStyle(color: Colors.purple),),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
