import 'package:flutter/material.dart';

void main() => runApp(MyApp());
/**
 * 计时器
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        title: "app demo",
        theme: new ThemeData(
          primaryColor: Colors.blue,
        ),
        home: new HomePage(
          title: "first home page",
        ),
    );
  }

}
class HomePage extends StatefulWidget{

  HomePage({Key key,this.title}):
      super(key:key);

  final String title;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyHomepagestate();
  }


}

class MyHomepagestate extends State<HomePage>{

  var concout=0;

  void _countListenter(){
    setState(() {
      concout++;
    });
  }

  /**
   * 生成build文件
   */
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),

      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("my first text"),
            new Text('$concout',style: Theme.of(context).textTheme.display1
            ),
          ],
        ),
      ),
        floatingActionButton: new FloatingActionButton(
            onPressed: _countListenter),
    );
  }
}


