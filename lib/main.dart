import 'package:flutter/material.dart';
import 'package:flutter_app/Own.dart';
import 'package:flutter_app/rount/BaseWidget.dart';
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

class HomePage extends StatefulWidget {

  HomePage({Key key, this.title}) :
        super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyHomepagestate();
  }


}

class MyHomepagestate extends State<HomePage> {

  var concout = 0;

  void _countListenter() {
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
            new Text('$concout', style: Theme
                .of(context)
                .textTheme
                .display1
            ),
            /**
             * 添加路由 测试路由
             */
            FlatButton(
                onPressed: (){
                  Navigator.push(context,
                    new MaterialPageRoute(builder:(context){
                      return new OwnPage();
                    })
                  );
                },
                child: new Text("go")),
             FlatButton(
               onPressed: (){
                 Navigator.push(context,
                     new MaterialPageRoute(builder:(context){
                       return new baseWidget();
                     })
                 );
               },
               child: Text("base widget") ,
             )
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: _countListenter),
    );
  }
}


