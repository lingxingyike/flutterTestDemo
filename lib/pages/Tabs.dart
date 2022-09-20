import 'package:flutter/material.dart';
import 'tabs/Category.dart';
import 'tabs/Home.dart';
import 'tabs/Setting.dart';
import 'tabs/Layout.dart';
import 'tabs/NavButton.dart';

class Tabs extends StatefulWidget {
  Tabs({Key? key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  List _pages = [
    Home(),
    Category(),
    Setting(),
    Layout(),
    NavButton(),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: _pages[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.blue,
        currentIndex: this._currentIndex,
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: '分类'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '设置'),
          BottomNavigationBarItem(icon: Icon(Icons.cell_wifi), label: '容器'),
          BottomNavigationBarItem(icon: Icon(Icons.nat_sharp), label: '导航'),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: UserAccountsDrawerHeader(
                    accountName: Text('DZM'),
                    accountEmail: Text('1528098547@qq.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.jj20.com%2Fup%2Fallimg%2F4k%2Fs%2F02%2F210924232035H52-0-lp.jpg&refer=http%3A%2F%2Fimg.jj20.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1661834093&t=5b0d57803ece2a77ff1ea2af4efcf256'),
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://img2.baidu.com/it/u=11397496,159342639&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=328'),
                            fit: BoxFit.cover)),
                    otherAccountsPictures: [
                      Image.asset('images/1.jpg', fit: BoxFit.cover),
                      Image.asset('images/2.jpg', fit: BoxFit.cover),
                      Image.asset('images/3.jpg', fit: BoxFit.cover),
                    ],
                  ),
                  /* DrawerHeader(
                    child: Text('Hello flutter'),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.jj20.com%2Fup%2Fallimg%2F4k%2Fs%2F02%2F210924232035H52-0-lp.jpg&refer=http%3A%2F%2Fimg.jj20.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1661834093&t=5b0d57803ece2a77ff1ea2af4efcf256'),
                            fit: BoxFit.cover)),
                  ), */
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text(
                '我的空间',
                style: TextStyle(fontFamily: 'Microsoft YaHei'),
              ),
              onTap: () {
                /* Navigator.of(context).pop();//隐藏侧边栏
                Navigator.pushNamed(context, routeName); */
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text(
                '用户中心',
                style: TextStyle(fontFamily: 'Microsoft YaHei'),
              ),
              onTap: () {
                /* Navigator.of(context).pop();//隐藏侧边栏
                Navigator.pushNamed(context, routeName); */
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text(
                '设置中心',
                style: TextStyle(fontFamily: 'Microsoft YaHei'),
              ),
              onTap: () {
                /* Navigator.of(context).pop();//隐藏侧边栏
                Navigator.pushNamed(context, routeName); */
              },
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
