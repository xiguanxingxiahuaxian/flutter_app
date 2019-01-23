# flutter_app

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.io/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.io/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.io/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.


项目集成步骤

1 用户变量配置
  具体：export PUB_HOSTED_URL=https://pub.flutter-io.cn
     export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
     
  系统配置
  path：官方的sdk 地址：https://flutter.io/docs/development/tools/sdk/archive#windows
  下载下来，sdk../bin 添加进path
   
2 As 打开后添加 flutter,dart 的插件，重启
  
3 创建第一个flutter项目/model/其他的形式
  具体：new flutter project/model/..
  一个三种选择，根据不同需求完成项目建立
4 入门：
    对lib下的main.dart 操作
    如果添加依赖，在pubspec.yaml 中加入如：english_words的依赖
    然后package get
     
 以上为建立第一个flutter项目的经过，详细请查看    https://flutterchina.club/get-started/codelab/ 
 官方的文档。
      
 5 计时器示例
    count.dart
    
 6 路由示例
    newrount.dart
     
 7 列表
     second.dart
    
 8 学习基础组件 添加基础颜色
    baseWidget.dart
    
 9 学习基础组件 按钮
   RaisedButton
   FlatButton
   OutlineButton
   IconButton
   对按钮的形态进行填充 :完成了一个自定义的button
   