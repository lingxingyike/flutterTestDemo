import 'package:flutter/material.dart';

import '../Search.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>Search())
                  );
                }, 
                child: Text('跳转到搜索页面'), 
                color: Theme.of(context).accentColor,
                textTheme: ButtonTextTheme.primary,
                ),
                SizedBox(height: 10,),
              ListTile(
                title: Text('张三',style: TextStyle(fontSize: 28),),
                subtitle: Text('高级工程师'),
              ),
              ListTile(
                title: Text('地址:xxxxx'),
              ),
          ],),
        )
      ],
    );
  }
}