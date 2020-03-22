import 'package:flutter/material.dart';

class YoutubeItemList extends StatelessWidget {
  final String mainTitle;
  final String channel;
  final String views;
  final String date;
  final String timeMin;
  final String timeSec;
  final Image img;

  YoutubeItemList({
    this.mainTitle,
    this.channel,
    this.views,
    this.date,
    this.timeMin,
    this.timeSec,
    this.img,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueGrey,
      ),
      child: SizedBox(
        height: 65,
        width: 300,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: <Widget>[
                  img,
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Text(
                      '$timeMin:$timeSec',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.all(5),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.only(
                  left: 8,
                  top: 5,
                ),
                height: double.infinity,
                child: Wrap(
                  alignment: WrapAlignment.start,
                  direction: Axis.vertical,
                  children: <Widget>[
                    Text(
                      mainTitle.length >= 18
                          ? mainTitle.substring(0, 15) + '...'
                          : mainTitle,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          channel,
                          style: TextStyle(fontSize: 15),
                        ),
                        Icon(
                          Icons.offline_pin,
                          size: 15,
                        )
                      ],
                    ),
                    Text(
                      '$views views - $date ago',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
