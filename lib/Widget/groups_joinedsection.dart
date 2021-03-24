import 'package:flutter/material.dart';

class GroupsJoinedSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
      height: 200,
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: Image.network(
                        'https://cdn.britannica.com/51/190751-050-147B93F7/soccer-ball-goal.jpg')
                    .image,
                backgroundColor: Colors.white,
              ),
              title: Text('Cooking Corner'),
              subtitle: Text('Last Active 24 days ago'),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              height: 60,
              child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
            ),
            Container(
              padding: EdgeInsets.only(right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.comment,
                            color: Colors.blue,
                          ),
                          onPressed: null),
                      Text('2'),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.blue,
                          ),
                          onPressed: null),
                      Text('2'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
