import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './blog.dart';
import './menu.dart';
import './openPositions.dart';
import './imaging.dart';
import './upload.dart';

class Pages extends StatelessWidget {
  //const Pages({Key? key}) : super(key: key);
  final String text;
  //final Function newPage;
  Pages({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 50,
      margin: EdgeInsets.all(10),
      child: CupertinoButton(
        onPressed: () {
          //Navigator.of(context).push(CupertinoPageRoute(
          //builder: (BuildContext context) => const openPositions()));
          Navigator.of(context).push(CupertinoPageRoute(
              builder: (BuildContext context) => const upload()));
        },
        color: CupertinoColors.systemOrange,
        child: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
