import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart'; 
import 'package:transparent_image/transparent_image.dart';

import 'urlimage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var titleString = 'Cache Image From Internet';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: titleString,
      home: new Scaffold(
        
        body: new UrlImage(),
      ),
    );
  }
}