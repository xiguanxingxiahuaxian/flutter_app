import 'package:flutter/material.dart';

class baseWidget extends StatefulWidget {

  baseWidget({Key key, this.title}) :super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ShowPage();
  }
}

class ShowPage extends State<baseWidget> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: Text("测试新的基础控件"),
        backgroundColor: Colors.blue,
      ),
      body: new Container(
          child: new Column(
            children: <Widget>[
              Text("自由的风。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.blue,
                    background: new Paint()
                      ..color = Colors.yellow,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.dashed
                ),
              ),
              RaisedButton(
                  onPressed: () {
                    //发出请求
                  },
                  child: Text("邀约")
              ),
              FlatButton(
                  color: Colors.green,
                  highlightColor: Colors.red,
                  splashColor: Colors.grey,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                  onPressed: () {
                    //发出请求
                  },
                  child: Text("秦风")
              ),
              OutlineButton(
                onPressed: () {
                  //发出请求
                },
                child: Text("迟与"),
              ),
              IconButton(icon: Icon(Icons.access_alarm),
                  onPressed: () {
                    //发出请求
                  })
            ],
          )
      ),
    );
  }

}