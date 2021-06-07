import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
 final String title;
 final String subtitle;

 TopBar({ this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 44, horizontal: 23),
      width: double.infinity,
      color: Color(0xff0B302e),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 40,
            backgroundImage:NetworkImage('https://i.pinimg.com/originals/c6/22/46/c62246425d2c45d07ff2ad24ecd620cc.jpg'),
          ),
          const SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),),
              Text(subtitle, style: TextStyle(fontSize: 16, color: Colors.white),)
            ],
          ),
        ],
      ),
    );
  }
}