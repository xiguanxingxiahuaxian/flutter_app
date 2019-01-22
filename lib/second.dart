import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //  var wordpair=new WordPair.random();

    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        /* appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),*/
        body: new Center(
          child: new Romdomword(),
        ),
      ),
    );
  }
}

class Romdomword extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new Romdomstate();
  }
}

class Romdomstate extends State<Romdomword> {
  /**
   * 声明数据数组
   */
  final _suggest = <WordPair>[];

  /**
   * 建立一个标准的字体样式
   */
  final _biggerfront = new TextStyle(fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold (
      appBar: new AppBar(
        title: new Text('Startup Name Generator'),
      ),
      body: _BuildSuggest(),
    );
  }
  //小布局组件
  Widget _BuildSuggest() {
    /**
     * 定义是数据集合
     * 定义一个 字体样式
     */
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) {
            return new Divider();
          }
          var _index = i ~/ 2;
          if (_index <= _suggest.length) {
            _suggest.addAll(generateWordPairs().take(10));
          }
          return _ItemText(_suggest[i]);
        }
    );
  }

  Widget _ItemText(WordPair pair) {
    return new ListTile(
        title: new Text(pair.asPascalCase, style: _biggerfront)
    );
  }
}
