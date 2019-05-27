import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Material(
        color: Colors.grey[200],
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 140,
                  width: double.infinity,
                  color: Color(0xff2196F3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30.0, left: 18.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  ImageIcon(
                                    AssetImage('assets/menus.png'),
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Sales Team',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18.0),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 12.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 28.0, top: 10.0),
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.calendar_today,
                                        color: Colors.grey, size: 12.0),
                                    SizedBox(
                                      width: 6.0,
                                    ),
                                    Text(
                                      '10.05.2018',
                                      style: TextStyle(
                                          color: Colors.grey[300],
                                          fontSize: 10.0),
                                    ),
                                    SizedBox(
                                      width: 15.0,
                                    ),
                                    Icon(Icons.alarm,
                                        color: Colors.grey, size: 12.0),
                                    SizedBox(
                                      width: 6.0,
                                    ),
                                    Text(
                                      '9pm - 10pm',
                                      style: TextStyle(
                                          color: Colors.grey[300],
                                          fontSize: 10.0),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            LinearProgressIndicator(
                              backgroundColor:
                                  Colors.transparent.withOpacity(0.1),
                              valueColor:
                                  new AlwaysStoppedAnimation(Colors.white),
                              value: 0.6,
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(left: 18.0),
                              child: Text(
                                'Key Activities 6min',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4.0, right: 4.0),
              child: Card(
                child: Container(
                  height: 100,
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5.0),
                              topRight: Radius.circular(5.0)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, top: 18.0, right: 18.0),
                        child: Row(
                          children: <Widget>[
                            Flexible(
                              fit: FlexFit.tight,
                              child: Text(
                                'Reconnect with volunters leaders',
                                style: TextStyle(
                                    color: Colors.green[800],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0),
                              ),
                            ),
                            ImageIcon(
                              AssetImage("assets/infos.png"),
                              size: 12.0,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, top: 8.0, right: 18.0),
                        child: Text(
                          'Lorem ipsum dolor sit amet,consectetur adipiscing elit,Pellentesque vestibulum efficitur',
                          style: TextStyle(
                              color: Colors.green[800], fontSize: 10.0),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0, top: 20.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Key Activities',
                    style: TextStyle(color: Colors.grey[500], fontSize: 14.0),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  ImageIcon(AssetImage('assets/infos.png'), size: 12.0),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: GridView(
                physics: ScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                children: <Widget>[
                  girVIew('01', 'Traning', Colors.teal[300], Colors.teal[100]),
                  girVIew('02', 'Quality Control', Colors.orange[300],
                      Colors.orange[100]),
                  girVIew('01', 'Traning', Colors.red[300], Colors.red[100]),
                  girVIew('02', 'Quality Control', Colors.blue[300],
                      Colors.blue[100]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Card girVIew(String num, String title, Color color1, Color color2) {
    return Card(
      elevation: 0.1,
      child: Column(
        children: <Widget>[
          Container(
            height: 90,
            decoration: BoxDecoration(
              color: color1,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.0),
                topRight: Radius.circular(5.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: color2.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        num,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 6.0,
                  ),
                  Text(
                    title,
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 18.0, top: 8.0, bottom: 10.0),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Skills Matrix',
                  style: TextStyle(color: color1, fontSize: 16.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Skills Matrix',
                  style: TextStyle(color: color1, fontSize: 16.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Skills Matrix',
                  style: TextStyle(color: color1, fontSize: 16.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
