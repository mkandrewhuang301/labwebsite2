import 'package:flutter/material.dart';

class Links extends StatelessWidget {
  const Links({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(1),
      child: Text(
        "Twitter: @MazurowskiPhD, @MazurowskiLab, @Duke_DAIR, @Duke_Spark",
        style: TextStyle(fontSize: 14),
        textAlign: TextAlign.left,
      ),
    );
  }
}
