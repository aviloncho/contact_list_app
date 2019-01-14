import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {

  String contactImg;
  String firstName;
  String lastName;
  String email;
  String phone;

  ContactCard(this.contactImg, this.firstName, this.lastName, this.phone, this.email);

  @override
  Widget build(BuildContext context) {

    final contactImage = Container(
      height: 80.0,
      width: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(contactImg)
        )
      ),
    );

    final contactDetail = Container(
      margin: EdgeInsets.only(
        left: 10.0
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            firstName + ' ' + lastName,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            phone,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          Text(
            email,
            style: TextStyle(
              fontSize: 18.0,
              fontStyle: FontStyle.italic,
            ),
          )
        ],
      ),
    );

    final mailButton = Container(
      height: 50.0,
      width: 50.0,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle
      ),
      child: InkWell(
        child: Icon(
          Icons.email,
          color: Colors.white,
        ),
      ),
    );

    return Container(
      margin: EdgeInsets.only(
        top: 8.0,
        bottom: 8.0,
      ),
      padding: EdgeInsets.all(10.0),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colors.black26,
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 4.0,
            offset: Offset(0.0, 4.0)
          )
        ]
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              contactImage,
              contactDetail,
            ],
          ),
          mailButton,
        ],
      ),
    );
  }
}
