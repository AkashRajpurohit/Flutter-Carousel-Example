import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int photoIndex = 0;
  List<String> photos = [
    'assets/1.jpg',
    'assets/2.jpg',
    'assets/3.jpg',
    'assets/4.jpg'
  ];

  void _prevImage() {
    setState(() => photoIndex = photoIndex > 0 ? photoIndex - 1 : 0);
  }

  void _nextImage() {
    setState(() => photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : photoIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carousel Example"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    image: DecorationImage(
                      image: AssetImage(photos[photoIndex]),
                      fit: BoxFit.cover
                    ),
                  ),
                  width: 300.0,
                  height: 400.0,
                )
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: _prevImage,
                color: Colors.red,
                iconSize: 40.0,
              ),
              SizedBox(width: 20.0),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: _nextImage,
                color: Colors.green,
                iconSize: 40.0,
              ),
            ],
          )
        ],
      ),
    );
  }
}