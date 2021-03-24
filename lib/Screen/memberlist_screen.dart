import 'package:flutter/material.dart';
import 'package:groupapplication/Screen/member_screen.dart';
import 'package:provider/provider.dart';
import '../common_widget/commonlisttile.dart';
import '../Model/memberlist.dart';

class MemberListScreen extends StatefulWidget {
  static const routeName = 'memberlist';

  @override
  _MemberListScreenState createState() => _MemberListScreenState();
}

class _MemberListScreenState extends State<MemberListScreen> {
  @override
  Widget build(BuildContext context) {
    final members = Provider.of<MemberList>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Friends'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.purple,
                Color(0xFF000080),
                Colors.lightBlue,
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: members.items.length,
        itemBuilder: (ctx, index) {
          return Column(
            children: [
              CommonListTile(
                circleAvatarImageUrl: members.items[index].imageUrl,
                titleText: members.items[index].title,

                  functionHandler:(){
                    Navigator.of(context).pushNamed(MemberScreen.routeName);
                  },
              ),
              Divider(),
            ],
          );
        },
      ),
    );
  }
}
