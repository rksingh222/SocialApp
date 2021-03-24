import 'package:flutter/material.dart';

class GroupListItem extends StatelessWidget {

  final String title;
  final String imageUrl;
  final Function functionHandler;

  GroupListItem(this.title,this.imageUrl,this.functionHandler);

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 70,
      child:Center(
        child:
          ListTile(
            onTap: functionHandler,
            leading: CircleAvatar(
              backgroundImage: Image.network(this.imageUrl).image,
              backgroundColor: Colors.white,
              radius: 40,
            ),
            title: Text(
              title,
              style: TextStyle(fontSize: 18),
            ),
          ),
      ),
    );
  }
}

