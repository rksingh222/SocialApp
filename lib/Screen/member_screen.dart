import 'package:flutter/material.dart';
import '../common_widget/commonbackgroundimage.dart';
import '../Widget/badge.dart';
import '../common_widget/commonlisttile.dart';

class MemberScreen extends StatelessWidget {

  static const routeName ='/member';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Member'),
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
              imageUrl: "https://www.theuiaa.org/wp-content/uploads/2017/12/2018_banner.jpg",
              middleImageUrl: "https://image.shutterstock.com/image-photo/portrait-pretty-woman-dark-hair-260nw-1581647623.jpg",
              title:  "Georgina Parker",
              subTitle: "@GPARKER",
              icon: false,
              buttonLeftIcon: Icons.add,
              buttonLeftColor: Colors.red,
              buttonLeft: true,
              buttonLeftText: 'Add A Request',
              buttonRightIcon: Icons.follow_the_signs,
              buttonRightColor: Colors.blue,
              buttonRight: true,
              buttonRightText: 'Follow',
            ),
            SizedBox(
              height: 15,
            ),
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
    ;
  }
}
