import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextShow extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TextShowState();
  }
}

class TextShowState extends State<TextShow> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var msg = ModalRoute.of(context).settings.arguments;
    return Material(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Text(
          msg,
          softWrap: true,
          style: TextStyle(fontSize: 100, color: Colors.black),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }
}
