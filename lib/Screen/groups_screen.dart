import 'package:flutter/material.dart';
import 'package:groupapplication/Widget/groups_joinedsection.dart';
import '../Widget/badge.dart';

class GroupsScreen extends StatelessWidget {

  static const routeName = '/groups';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Group'),
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
            SizedBox(
              height: 15.0,
            ),
            Badge(
              imageUrl: 'https://cdn.britannica.com/51/190751-050-147B93F7/soccer-ball-goal.jpg',
              middleImageUrl: 'https://cdn.britannica.com/51/190751-050-147B93F7/soccer-ball-goal.jpg',
              title: 'FootBall/Soccer',
              subTitle: 'Last Active 24 days ago',
              icon: false,
              buttonMiddleIcon: Icons.comment,
              buttonMiddle: true,
              buttonMiddleColor: Colors.blue,
              buttonMiddleText: "Joined",
            ),
            SizedBox(
              height: 15.0,
            ),
            GroupsJoinedSection(

            ),
          ],
        ),
      ),
    );
  }
}
