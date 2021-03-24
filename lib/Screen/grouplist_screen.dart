import 'package:flutter/material.dart';
import 'package:groupapplication/Screen/groups_screen.dart';
import '../Model/grouplist.dart';
import 'package:provider/provider.dart';
import '../Widget/grouplist_item.dart' as GroupListItemWidget;


class GroupListScreen extends StatefulWidget {
  static const routeName = '/grouplist';

  @override
  _GroupListScreenState createState() => _GroupListScreenState();
}

class _GroupListScreenState extends State<GroupListScreen> {

  @override
  Widget build(BuildContext context) {

    final groups = Provider.of<GroupList>(context,listen: false);
    print(groups.items.length);
    return Scaffold(
      appBar: AppBar(
        title: Text('Groups'),
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
      backgroundColor: Colors.white,
      body: ListView.builder(itemCount: groups.items.length  ,itemBuilder: (ctx,index){
        return
           Column(
            children: [
            GroupListItemWidget.GroupListItem(groups.items[index].title, groups.items[index].imageUrl,(){
              Navigator.of(context).pushNamed(GroupsScreen.routeName);
            }),
            Divider(),
            ],);
      },),
    );
  }
}
