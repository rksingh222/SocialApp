import 'package:flutter/material.dart';


class ActivityListItem {
  final String imageUrl;
  final String name;
  final String days;
  final String comment;
  final String reply;
  final String likeText;
  ActivityListItem({this.imageUrl,this.name,this.days,this.comment,this.reply,this.likeText});
}

class ActivityList with ChangeNotifier{
  List<ActivityListItem> _items = [
    ActivityListItem(
      imageUrl:'https://c8.alamy.com/comp/2CB102T/entrance-to-the-nocatee-splash-waterpark-a-private-community-waterpark-in-nocatee-florida-usa-2CB102T.jpg',
      name:'Georgina Parker',
      days: '24 days ago',
      comment: 'thanks for posting this',
      reply: 'Reply',
      likeText: '1',
    ),
  ];

  List<ActivityListItem> get items {
    return [..._items];
  }
  void addItems(ActivityListItem activityListItem) {
    _items.add(activityListItem);
    notifyListeners();
  }
}