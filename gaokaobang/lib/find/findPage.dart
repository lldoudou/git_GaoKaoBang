import 'package:flutter/material.dart';
import 'package:gaokaobang/find/College.dart';
import 'package:gaokaobang/find/NoteScreen.dart';
import 'package:gaokaobang/find/SearchScreen.dart';
import 'package:gaokaobang/find/TestScreen.dart';

class findPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return new Page();
  }
}

class Page extends State<findPage> {
  @override
  Widget build(BuildContext context) {
    return layout(context);
  }

  Widget layout(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('高考帮'),
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: new Container(
          padding: const EdgeInsets.all(0),
          child: new Column(
            children: <Widget>[
              new Container(
                padding: new EdgeInsets.all(20),
                color: Colors.green,
                //height: MediaQuery.of(context).size.height * (1.2 / 5.0),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    new Container(height:0),
                    new Text(
                      "The reason why a great man is great is that he resolves to be a great man.\n伟人之所以伟大，是因为他立志要成为伟大的人", style: TextStyle(fontSize:18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),),
                    /*new Text("每日一句，点击刷新", style: TextStyle(fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w700)
                    ),*/
                  ],
                ),
              ),
              new morePage(),
            ],
          )

      ),
    );
  }

  Widget buildAppBar(BuildContext context) {
    return new AppBar(title: const Text('发现'));
  }
}

//
class morePage extends StatefulWidget{
  @override
  createState() => new morePageState();
}
class morePageState extends State<morePage> {
  clickSearch() {
    print("S");
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new SearchScreen()),
    );
  }
  clickTest() {
    print("T");
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new TestScreen()),
    );
  }
  clickNote() {
    print("N");
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new NoteScreen()),
    );
  }
  clickCollege() {
    print("C");
    Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => new CollegeScreen()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: new EdgeInsets.fromLTRB(10, 0,10, 0),
      //color: Colors.greenAccent,
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    //左上
                    new Container(
                      margin: new EdgeInsets.fromLTRB(0, 0, 5, 5),
                      height: MediaQuery
                          .of(context)
                          .size
                          .height / 4,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width / 2 - 15,
                      //color: Colors.green,
                      child: new Container(
                          alignment: Alignment.center,
                          child: new Container(
                              child: new Center(
                                  child: new MaterialButton(
                                      onPressed: (){clickSearch();},
                                      child: new Column(
                                        children: <Widget>[
                                          new Container(
                                            child: new Image.asset(
                                                "images/search.png"),
                                            margin: const EdgeInsets.fromLTRB(
                                                0, 20, 0, 0),
                                          ),
                                          new Text("信息查询", style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w700))
                                        ],
                                      ))
                              )
                            /*new Column(
                            children: <Widget>[
                              new Text("高校", style: TextStyle(fontSize: MediaQuery
                                  .of(context)
                                  .size
                                  .width / 5,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900)),
                              new Text("查询", style: TextStyle(fontSize: MediaQuery
                                  .of(context)
                                  .size
                                  .width / 5,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900)),

                            ],
                          ),*/
                          )

                      ),
                    ),
                    //左下
                    new Container(

                      margin: new EdgeInsets.fromLTRB(0, 5, 5, 0),
                      height: MediaQuery
                          .of(context)
                          .size
                          .height / 4,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width / 2 - 15,
                      //color: Colors.green,
                      child: new Container(
                          alignment: Alignment.center,
                          child: new Container(
                              child: new Center(
                                  child: new MaterialButton(
                                      onPressed: (){clickTest();}, child: new Column(
                                    children: <Widget>[
                                      new Container(
                                        child: new Image.asset(
                                            "images/test.png"),
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 30, 0, 0),
                                      ),
                                      new Text("性格测试", style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w700))
                                    ],
                                  ))
                              )
                            /*new Column(
                            children: <Widget>[
                              new Text("高校", style: TextStyle(fontSize: MediaQuery
                                  .of(context)
                                  .size
                                  .width / 5,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900)),
                              new Text("查询", style: TextStyle(fontSize: MediaQuery
                                  .of(context)
                                  .size
                                  .width / 5,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900)),

                            ],
                          ),*/
                          )

                      ),
                    ),
                  ],
                ),
                new Column(
                  children: <Widget>[
                    //右上
                    new Container(
                      margin: new EdgeInsets.fromLTRB(5, 0, 0, 5),
                      height: MediaQuery
                          .of(context)
                          .size
                          .height / 4,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width / 2 - 15,
                      //color: Colors.green,
                      child: new Container(
                          alignment: Alignment.center,
                          child: new Container(
                              child: new Center(
                                  child: new MaterialButton(
                                      onPressed: (){clickCollege();},
                                      child: new Column(
                                        children: <Widget>[
                                          new Container(
                                            child: new Image.asset(
                                              "images/building.png",),
                                            margin: const EdgeInsets.fromLTRB(
                                                0, 20, 0, 0),
                                          ),
                                          new Text("高校推荐", style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w700))
                                        ],
                                      ))

                              )
                            /*new Column(
                            children: <Widget>[
                              new Text("高校", style: TextStyle(fontSize: MediaQuery
                                  .of(context)
                                  .size
                                  .width / 5,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900)),
                              new Text("查询", style: TextStyle(fontSize: MediaQuery
                                  .of(context)
                                  .size
                                  .width / 5,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900)),

                            ],
                          ),*/
                          )

                      ),
                    ),
                    //右下
                    new Container(
                      margin: new EdgeInsets.fromLTRB(5, 5, 0, 0),
                      height: MediaQuery
                          .of(context)
                          .size
                          .height / 4,
                      width: MediaQuery
                          .of(context)
                          .size
                          .width / 2 - 15,
                      //color: Colors.green,
                      child: new Container(
                          alignment: Alignment.center,
                          child: new Container(
                              child: new Center(
                                  child: new MaterialButton(
                                      onPressed: (){clickNote();},
                                      child: new Column(
                                    children: <Widget>[
                                      new Container(
                                        child: new Image.asset(
                                            "images/book.png"),
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 20, 0, 0),
                                      ),
                                      new Text("高考须知", style: TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w700))
                                    ],
                                  ))

                              )
                            /*new Column(
                            children: <Widget>[
                              new Text("高校", style: TextStyle(fontSize: MediaQuery
                                  .of(context)
                                  .size
                                  .width / 5,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900)),
                              new Text("查询", style: TextStyle(fontSize: MediaQuery
                                  .of(context)
                                  .size
                                  .width / 5,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900)),

                            ],
                          ),*/
                          )

                      ),
                    )
                  ],
                )

              ],
            ),
          ],
        )

    );
  }
}
