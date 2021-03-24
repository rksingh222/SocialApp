import 'package:flutter/material.dart';
class CommonBackGroundImage extends StatelessWidget {

  final String imageUrl;
  CommonBackGroundImage({this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.network(imageUrl).image,
          )
      ),
    );
  }
}
