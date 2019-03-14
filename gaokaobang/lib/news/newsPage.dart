import 'package:flutter/material.dart';
import 'package:gaokaobang/news/newslist.dart';


/*
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        children: <Widget>[
          new Container(
            height:MediaQuery.of(context).size.height,
            child: new RandomWords(),
          ),
        ],
      ),
    );
  }
}

*/


class newsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return new Page();
  }
}
class Page extends State<newsPage> {
  @override
  Widget build(BuildContext context) {
    return layout(context);
  }

  Widget layout(BuildContext context) {
    return Scaffold(
      body: new Column(
        children: <Widget>[
          new Container(
            height:MediaQuery.of(context).size.height-66,
            child: new getHomeList(),
          ),
        ],
      ),
    );
  }

  Widget buildAppBar(BuildContext context) {
    return new AppBar(title: const Text('首页'));
  }

  Widget header(BuildContext context) {
    return new Image.network(
      'http://i2.yeyou.itc.cn/2014/huoying/hd_20140925/hyimage06.jpg',

    );
  }
}