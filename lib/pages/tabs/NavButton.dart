import 'package:flutter/material.dart';
import '../Form.dart';

class NavButton extends StatefulWidget {
  NavButton({Key? key}) : super(key: key);

  @override
  _NavButtonState createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text('跳转到表单页面'),
            textColor: Colors.blue,
            onPressed: () {
              Navigator.pushNamed(context, '/form', arguments: {"title": 3333});
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) => FormPage(title: '那那那那',)));
            },
          ),
          RaisedButton(
            child: Text('跳转到TabBar页面'),
            textColor: Colors.blue,
            onPressed: () {
              Navigator.pushNamed(context, '/tabBarController');
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) => FormPage(title: '那那那那',)));
            },
          ),
        ]);
  }
}
