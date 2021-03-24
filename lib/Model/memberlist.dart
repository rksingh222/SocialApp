import 'package:flutter/material.dart';

class MemberListItem{
  final String imageUrl;
  final String title;
  MemberListItem(this.title,this.imageUrl);
}

class MemberList with ChangeNotifier {
  List<MemberListItem> _items = [
    MemberListItem('Georgina Parker', 'https://c8.alamy.com/comp/2CB102T/entrance-to-the-nocatee-splash-waterpark-a-private-community-waterpark-in-nocatee-florida-usa-2CB102T.jpg'),
    MemberListItem('Ripan', 'https://assets.bonappetit.com/photos/5e7a6c79edf206000862e452/1:1/w_1519,h_1519,c_limit/Cooking-Home-Collection.jpg'),
    MemberListItem('Milos', 'https://cdn.britannica.com/51/190751-050-147B93F7/soccer-ball-goal.jpg'),
    MemberListItem('Michael', 'https://www.tech9logy.com/wp-content/uploads/2018/09/blog-image.jpg'),
    MemberListItem('Celina','https://static1.arlocdn.net/web/2019/02/12233531/Wordpress-logo1.png'),
  ];

  List<MemberListItem> get items {
    return [..._items];
  }


}