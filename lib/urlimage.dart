import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:transparent_image/transparent_image.dart';

class UrlImage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _UrlImageState();
  }
}

class _UrlImageState extends State<UrlImage> {
  var titleString = 'Url Image Here';
  static var urlString = 'http://swiftcodingthai.com/ann/Friend0.JPG';

  var urlStrings = [
    'http://swiftcodingthai.com/ann/Friend0.JPG',
    'http://swiftcodingthai.com/ann/Friend1.JPG',
    'http://swiftcodingthai.com/ann/Friend2.JPG',
    'http://swiftcodingthai.com/ann/Friend3.JPG',
    'http://swiftcodingthai.com/ann/Friend4.JPG',
    'http://swiftcodingthai.com/ann/Friend5.JPG',
    'http://swiftcodingthai.com/ann/Friend6.JPG'
  ];
  int indexInt = 0;

  @override
  Widget build(BuildContext context) {
    CachedNetworkImage objCachedNetworkImage = new CachedNetworkImage(
      height: 300.0,
      imageUrl: urlStrings[indexInt],
      placeholder: new CircularProgressIndicator(),
    );
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(titleString),
        ),
        body: new Container(
          child: new Column(
            children: <Widget>[
              new Center(
                child: objCachedNetworkImage,
              ),
              new Container(
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new RaisedButton(
                        child: new Text('Back'),
                        onPressed: () {
                          setState(() {
                            indexInt = (indexInt <= 0) ? 6 : indexInt - 1;
                          });
                        },
                      ),
                    ),
                    new Expanded(
                      child: new RaisedButton(
                        child: new Text('Next'),
                        onPressed: () {
                          setState(() {
                            indexInt = (indexInt <= 6) ? 0 : indexInt + 1;
                          });
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
