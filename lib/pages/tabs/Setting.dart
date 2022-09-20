import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  Setting({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 200,
                color: Colors.black,
                child: Text('你好Flutter'),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Container(
                    height: 180,
                    child: Image.asset('images/1.jpg', fit: BoxFit.cover))),
            SizedBox(width: 10),
            Expanded(
                flex: 1,
                child: Container(
                    height: 180,
                    child: ListView(
                      children: <Widget>[
                        Container(
                            height: 85,
                            child:
                                Image.asset('images/3.jpg', fit: BoxFit.cover)),
                        SizedBox(height: 10),
                        Container(
                            height: 85,
                            child:
                                Image.asset('images/2.jpg', fit: BoxFit.cover)),
                      ],
                    ))),
          ],
        )
      ],
    );
  }
}
