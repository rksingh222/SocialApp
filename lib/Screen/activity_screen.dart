import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Widget/activitylist_item.dart' as ActivityWidget;
import '../Model/Activitylist.dart';

class ActivityScreen extends StatefulWidget {

  static const routeName = '/activity';

  @override
  _ActivityScreenState createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {

  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final activities = Provider.of<ActivityList>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Activity'),
        ),
        body: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              margin: EdgeInsets.all(15),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 300,
                      margin: EdgeInsets.symmetric(vertical: 15),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Comment',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                        controller: myController,
                        onSubmitted: (string) {
                          setState(() {
                            activities.addItems(
                              ActivityListItem(
                                imageUrl:
                                    'https://static1.arlocdn.net/web/2019/02/12233531/Wordpress-logo1.png',
                                name: 'Celina',
                                days: '24 days ago',
                                comment: 'thanks for posting this',
                                reply: 'Reply',
                                likeText: '1',
                              ),
                            );
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                child: ListView.builder(
                    itemCount: activities.items.length,
                    itemBuilder: (ctx, index) {
                      return ActivityWidget.ActivityListItem(
                        activities.items[index].imageUrl,
                          activities.items[index].name,
                          activities.items[index].days,
                          activities.items[index].comment,
                          activities.items[index].reply,
                          activities.items[index].likeText,
                      );
                    }),
              ),
            ),
          ],
        ),
    );
  }
}
