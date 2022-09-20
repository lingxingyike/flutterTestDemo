import 'package:demo1/res/listData.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listData.map((value) {
        return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.asset(
                  value['imageUrl'],
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('http://c-ssl.duitang.com/uploads/item/201712/08/20171208214551_AFQ2h.thumb.1000_0.jpeg'),
                  ),
                  // ClipOval(child: Image.asset('images/1.jpg',fit: BoxFit.cover,width: 60,height: 60,),),
                  title: Text(value['title']),
                  subtitle: Text(value['description'],maxLines: 2,overflow: TextOverflow.ellipsis,))
            ],
          ),
        );
      }).toList(),
    );
  }
}
