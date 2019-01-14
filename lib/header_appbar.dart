import 'package:flutter/material.dart';

class HeaderAppBar extends StatelessWidget {

  final imgBack = 'assets/img/AppBar.png';

  String title;

  HeaderAppBar(this.title);

  @override
  Widget build(BuildContext context) {

    final imageBack = Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imgBack)
        )
      ),
    );

    final iconTitle = Stack(
      children: <Widget>[
        Container(
          child: Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 10.0
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ),
      ],
    );

    return Container(
      height: 100.0,
      child: Stack(
        children: <Widget>[
          imageBack,
          iconTitle,
        ],
      ),
    );
  }
}
