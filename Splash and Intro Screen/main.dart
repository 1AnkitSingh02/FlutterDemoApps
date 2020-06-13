import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Splash.dart';

void main() => runApp(new MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      color: Colors.blue,
      home: new Splash(),

    );
  }
}

