import 'package:flutter/material.dart';
import './home.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: .5,
        title: Text('12 STORIES'),
        /*actions: <Widget>[
          Icon(Icons.keyboard_backspace),
        ],*/
      ),
      backgroundColor: Colors.grey,
      body: Text(
        'ABOUT',

        textAlign: TextAlign.center,
        overflow: TextOverflow.clip,
        style: TextStyle(fontSize: 40, fontStyle: FontStyle.normal,backgroundColor: Colors.grey,),
      ),
      resizeToAvoidBottomPadding: true,

    );
  }
}
