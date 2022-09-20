import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
final arguments;
FormPage({this.arguments});
  @override
  _FormPageState createState() => _FormPageState(title:"${arguments!=null?arguments['title']:'0'}");
}

class _FormPageState extends State<FormPage> {
String title;
_FormPageState({this.title='表单'});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(child: Text('返回'),onPressed: (){
        Navigator.of(context).pop();
      },),
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('我是表单页面'),
          ),
          ListTile(
            title: Text('我是表单页面'),
          ),
          ListTile(
            title: Text('我是表单页面'),
          ),
          ListTile(
            title: Text('我是表单页面'),
          ),
          ListTile(
            title: Text('我是表单页面'),
          ),
        ],
      ),
    );
  
  }
}