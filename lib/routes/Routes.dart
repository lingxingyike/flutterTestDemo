import 'package:demo1/pages/Tabs.dart';

import '../pages/Search.dart';
import '../pages/Form.dart';
import 'package:flutter/material.dart';
import '../pages/TabBarController.dart';

//配置路由
final routes = {
  '/': (context, {arguments}) => Tabs(),
  '/search': (context, {arguments}) => Search(),
  '/form': (context, {arguments}) => FormPage(arguments: arguments),
  '/tabBarController': (context) => TabBarControllerPage(),
};

var onGenerateRoute = (RouteSettings settings) {
  //统一处理
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
