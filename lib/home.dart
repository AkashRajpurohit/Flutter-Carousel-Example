import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int photoIndex = 0;
  List<String> photos = [
    'http://lorempixel.com/640/480/food',
    'http://lorempixel.com/640/480/abstract',
    'http://lorempixel.com/640/480/nature',
    'http://lorempixel.com/640/480/fashion'
  ];

  void _prevImage() {
    setState(() => photoIndex = photoIndex > 0 ? photoIndex - 1 : 0);
  }

  void _nextImage() {
    setState(() => photoIndex < photos.length - 1 ? photoIndex + 1 : photoIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}