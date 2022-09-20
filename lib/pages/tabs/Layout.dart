import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  Layout({Key? key}) : super(key: key);

  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment(1, 1),
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.purple,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.home,
                size: 30,
                color: Colors.green,
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Icon(
                Icons.search_off,
                size: 30,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
