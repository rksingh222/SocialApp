import 'package:flutter/material.dart';

class CommonListTile extends StatelessWidget {
  final String circleAvatarImageUrl;
  final String titleText;
  final String subTitleText;
  final Function functionHandler;

  CommonListTile(
      {this.circleAvatarImageUrl, this.titleText, this.subTitleText,this.functionHandler});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: this.functionHandler,
      leading: CircleAvatar(
        backgroundImage: Image.network(this.circleAvatarImageUrl).image,
        backgroundColor: Colors.white,
      ),
      title: titleText== null? null:Text(this.titleText),
      subtitle: subTitleText == null? null:Text(this.subTitleText),
    );
  }
}
