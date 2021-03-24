import 'package:flutter/material.dart';
import 'package:groupapplication/Screen/activityprofile_screen.dart';
import 'package:groupapplication/Screen/grouplist_screen.dart';
import '../Screen/memberlist_screen.dart';
import '../Screen/member_screen.dart';
import '../Screen/groups_screen.dart';

import '../Widget/groups_joinedsection.dart';


class Badge extends StatelessWidget {
  final String imageUrl;
  final String middleImageUrl;
  final String title;
  final String subTitle;
  final bool icon;

  final IconData buttonLeftIcon;
  final Color buttonLeftColor;
  final bool buttonLeft;
  final String buttonLeftText;

  final IconData buttonMiddleIcon;
  final Color buttonMiddleColor;
  final bool buttonMiddle;
  final String buttonMiddleText;

  final IconData buttonRightIcon;
  final Color buttonRightColor;
  final bool buttonRight;
  final String buttonRightText;

  Badge({
    @required this.imageUrl,
    @required this.middleImageUrl,
    @required this.title,
    @required this.subTitle,
    @required this.icon,

    this.buttonLeftIcon ,
    this.buttonLeftColor = Colors.blue,
    this.buttonLeft = false,
    this.buttonLeftText = '',

    this.buttonMiddleIcon,
    this.buttonMiddleColor = Colors.blue,
    this.buttonMiddle = false,
    this.buttonMiddleText = '',

    this.buttonRightIcon,
    this.buttonRightColor = Colors.blue,
    this.buttonRight = false,
    this.buttonRightText = '',
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15.0),
          height: 340,
          width: double.infinity,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.network(
                          imageUrl,
                        ).image),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                    ),
                    color: Colors.blue,
                  ),
                  height: 100,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 80,
                ),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  subTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: icon?[
                    Column(
                      children: [
                        MaterialButton(
                          color: Colors.lightBlue,
                          shape: CircleBorder(),
                          onPressed: () {
                            Navigator.of(context).pushNamed(ActivityProfileScreen.routeName);
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
                            Navigator.of(context).pushNamed(GroupListScreen.routeName);
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
                            Navigator.of(context).pushNamed(MemberListScreen.routeName);
                          },
                          child: Icon(Icons.account_circle,color: Color(0xFF000080),),
                        ),
                        Text('Friends'),
                      ],

                    )

                  ]:[
                    Visibility(
                      visible: buttonLeft,
                      child: RaisedButton.icon(
                        color:buttonLeftColor,
                        onPressed: () {

                        },
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0),),),
                        label: Text(
                          buttonLeftText,
                          style: TextStyle(color: Colors.white),
                        ),
                        icon: Icon(
                          buttonLeftIcon,
                          color: Colors.white,
                        ),
                        textColor: Colors.white,
                        splashColor: Colors.red,

                      ),
                    ),
                    Visibility(
                      visible: buttonMiddle,
                      child: RaisedButton.icon(
                        onPressed: () {
                          //Navigator.of(context).pushNamed(MemberScreen.routeName);
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        label: Text(
                          buttonMiddleText,
                          style: TextStyle(color: Colors.white),
                        ),
                        icon: Icon(
                          buttonMiddleIcon,
                          color: Colors.white,
                        ),
                        textColor: Colors.white,
                        splashColor: Colors.red,
                        color: buttonMiddleColor,
                      ),
                    ),
                    Visibility(
                      visible: buttonRight,
                      child: RaisedButton.icon(
                        onPressed: () {
                          print('Button Clicked.');
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        label: Text(
                          buttonRightText,
                          style: TextStyle(color: Colors.white),
                        ),
                        icon: Icon(
                          buttonRightIcon,
                          color: Colors.white,
                        ),
                        textColor: Colors.white,
                        splashColor: Colors.red,
                        color: buttonRightColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 40,
          left: MediaQuery.of(context).size.width / 2 - 60,
          child: Container(
            height: 120,
            width: 120,
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.network(
                    this.middleImageUrl,
                  ).image),
              color: Colors.black,
              border: Border.all(color: Colors.white, width: 3),
              borderRadius: BorderRadius.circular(60),
            ),
          ),
        ),
      ],
    );
  }
}
