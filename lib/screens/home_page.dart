import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lfh/screens/widgets/top_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TopBar(title: 'Muhammad Hafil T', subtitle: 'Developer'),
              const SizedBox(height: 10),
              Text('Photography',
                  style: TextStyle(fontSize: 22, color: Color(0xff0B302e))),
              GridView.builder(
                padding: EdgeInsets.all(10),
                itemCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2),
                itemBuilder: (ctx, index) => Container(
                  child: Image.asset("images/16181.jpg", fit: BoxFit.cover,),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
