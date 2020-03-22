import 'package:flutter/material.dart';

class BlogCard extends StatelessWidget {
  final Widget title;
  final double radius;
  final Image img;
  final int views;
  final Color cardColor;
  BlogCard({this.cardColor, this.title, this.radius, this.img, this.views});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      margin: EdgeInsets.all(20),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: <Widget>[
                img,
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 5.0),
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(views.toString()),
                      Icon(Icons.remove_red_eye),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(child: title),
          ),
        ],
      ),
    );
  }
}
