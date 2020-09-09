import 'package:calculator/i_o_converter.dart';
import 'package:flutter/material.dart';

class Converter extends StatelessWidget {

  final Function toggleView;
  Converter({ this.toggleView });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Converter',
        ),
        backgroundColor: Colors.blue[700],
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () {
              this.toggleView();
            },
            label: Text(
              'Calculator',
              style: TextStyle(color: Colors.white),
            ),
            icon: Icon(
              Icons.dialpad,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.near_me,
              color: Colors.black,
            ),
            title: Text('Mass'),
            onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context) => IoConverter()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.code,
              color: Colors.black,
            ),
            title: Text('Length'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => IoConverter()));
            },
          ),

        ],
      ),
    );
  }
}

