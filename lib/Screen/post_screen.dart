import 'package:flutter/material.dart';
import 'package:groupapplication/common_widget/commonbackgroundimage.dart';
import '../common_widget/commonlisttile.dart';

class PostScreen extends StatelessWidget {

  static const routeName ='post';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post'),
      ),
      body: Container(
        height: 650,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0,),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            children: [
              CommonListTile(
                circleAvatarImageUrl:
                    'https://image.shutterstock.com/image-photo/portrait-pretty-woman-dark-hair-260nw-1581647623.jpg',
                subTitleText: 'Cooking Corner',
                titleText: 'Georgina Parker',
              ),
              CommonBackGroundImage(
                  imageUrl:
                      'https://ca-times.brightspotcdn.com/dims4/default/0090820/2147483647/strip/true/crop/3000x2000+0+0/resize/840x560!/quality/90/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2F2c%2F81%2Ffcf6a0a04032869986b92e136c2c%2Fla-times-recipe-database-cooking-newsletter.jpg'),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc commodo finibus est, id suscipit erat lobortis ut. ',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc commodo finibus est, id suscipit erat lobortis ut. Quisque mattis sed arcu eget elementum. Nunc et est vitae augue tincidunt tempor. Aliquam faucibus tristique ipsum et vehicula. Nullam quis nisl ornare, varius ex non, mollis eros. Nunc eleifend, tortor malesuada bibendum condimentum',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
