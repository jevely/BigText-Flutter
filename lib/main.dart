import 'package:bigtextflutter/textshow.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "show_text_page": (context) => TextShow(),
      },
      home: MainRoute(),
    );
  }
}

class MainRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainState();
  }
}

class MainState extends State<MainRoute> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    controller.text = "";
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.check),
              onPressed: () {
                Navigator.pushNamed(context, "show_text_page",
                    arguments: controller.text);
              })
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: TextField(
          keyboardType: TextInputType.multiline,
          maxLines: null,
          style: TextStyle(fontSize: 40, color: Colors.black),
          controller: controller,
          decoration:
              InputDecoration(hintText: "请输入文字", border: InputBorder.none),
        ),
      ),
    );
  }
}
