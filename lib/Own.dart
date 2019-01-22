import 'package:flutter/material.dart';
/**
 *  尝试建立的第一个路由
 *  完成一个页面
 *
 *
 */

class OwnPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("hallo new  rout"),
      ),
      body: new Text("hehe"),
    );
  }
}