import 'package:flutter/material.dart';
import '../Screen/grouplist_screen.dart';

class ColoredTabBar extends ColoredBox implements PreferredSizeWidget {
  ColoredTabBar({this.color, this.tabBar}) : super(color: color, child: tabBar);

  final Color color;
  final TabBar tabBar;

  @override
  Size get preferredSize => tabBar.preferredSize;
}

class TabScreen extends StatefulWidget {

  static const routeName = '/tab';

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Group List'),
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
          bottom: ColoredTabBar(
            color: Colors.white,
            tabBar: TabBar(
              labelColor: Colors.black,
              tabs: [
                Tab(text: 'All',),
                Tab(text: 'Active',),
                Tab(text: 'Mine',),
                Tab(icon: Icon(Icons.search),),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            GroupListScreen(),
            GroupListScreen(),
            GroupListScreen(),
            GroupListScreen(),
          ],
        ),

      ),
    );
  }
}
