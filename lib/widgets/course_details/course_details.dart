import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'MEET AND GREET\nSETTING DIRECTION FOR 2020',
            style: TextStyle(
                fontWeight: FontWeight.w900, fontSize: 36, height: 0.9),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'This first meeting of 2020 will be a brainstorming session to help set direction for the Meetup events.',
            style: TextStyle(
              fontSize: 21,
              height: 1.7,
            ),
          )
        ],
      ),
    );
  }
}
