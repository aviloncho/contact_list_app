import 'package:flutter/material.dart';
import 'contact_card.dart';

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 80.0,
      ),
      padding: EdgeInsets.only(
        left: 10.0,
        right: 10.0,
      ),
      child: ListView(
        children: <Widget>[
          ContactCard(
              'assets/img/contact1.jpg',
              'Fernando',
              'Alonso',
              '555-123-2385',
              'f@gmail.com'
          ),
          ContactCard(
              'assets/img/contact2.png',
              'Alberto',
              'Lopez',
              '555-456-5685',
              'alberticol@hotmail.com'
          ),
          ContactCard(
              'assets/img/contact3.png',
              'Carlos',
              'Romero',
              '555-597-3435',
              'carlosrome@yahoo.com'
          ),
          ContactCard(
              'assets/img/contact4.png',
              'Andres',
              'Cardozo',
              '555-111-000',
              'a@platzi.com'
          ),
        ],
      ),
    );
  }
}
