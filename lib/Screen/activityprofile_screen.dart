import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '../Widget/activitylist_item.dart' as ActivityWidget;
import '../Model/Activitylist.dart';
import '../Screen/activityprofile_screen.dart';
import '../common_widget/commonbackgroundimage.dart';
import '../Widget/badge.dart';
import '../common_widget/commonlisttile.dart';
import '../Widget/groups_joinedsection.dart';

class ActivityProfileScreen extends StatefulWidget {
  static const routeName = '/activityprofile';

  @override
  _ActivityProfileScreenState createState() => _ActivityProfileScreenState();
}

class _ActivityProfileScreenState extends State<ActivityProfileScreen> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final activities = Provider.of<ActivityList>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Activity'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:[
                Colors.purple,
                Color(0xFF000080),
                Colors.lightBlue,
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'News Feed',
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 300,
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Comment',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                        ),
                        controller: myController,
                        onSubmitted: (string) {
                          setState(() {});
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 80,
              width: double.infinity,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          MaterialButton(
                            color: Colors.lightBlue,
                            shape: CircleBorder(),
                            onPressed: () {

                            },
                            child: Icon(Icons.account_circle,color: Color(0xFF000080),),
                          ),
                          Text('Activity'),
                        ],
                      ),
                      Column(
                        children: [
                          MaterialButton(
                            color: Colors.lightBlue,
                            shape: CircleBorder(),
                            onPressed: () {

                            },
                            child: Icon(Icons.group,color: Color(0xFF000080),),
                          ),
                          Text('Groups'),
                        ],
                      ),
                      Column(
                        children: [
                          MaterialButton(
                            color: Colors.lightBlue,
                            shape: CircleBorder(),
                            onPressed: () {
                            },
                            child: Icon(Icons.account_circle,color: Color(0xFF000080),),
                          ),
                          Text('Friends'),
                        ],
                      ),
                    ],
                ),
              ),
            ),

            GroupsJoinedSection(),
            Container(
              height: 320,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 15.0),

              child: Card(
                child: Column(
                  children: [
                    CommonListTile(
                      circleAvatarImageUrl:
                      "https://image.shutterstock.com/image-photo/portrait-pretty-woman-dark-hair-260nw-1581647623.jpg",
                      titleText: "Georgina Parker",
                      subTitleText: "@GPARKER",
                    ),
                    SizedBox(height: 20,),
                    CommonBackGroundImage(imageUrl:"https://ca-times.brightspotcdn.com/dims4/default/0090820/2147483647/strip/true/crop/3000x2000+0+0/resize/840x560!/quality/90/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F2c%2F81%2Ffcf6a0a04032869986b92e136c2c%2Fla-times-recipe-database-cooking-newsletter.jpg"),
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
