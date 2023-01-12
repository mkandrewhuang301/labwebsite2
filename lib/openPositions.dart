import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './menu.dart';
import 'package:flutter_cube/flutter_cube.dart';

class openPositions extends StatelessWidget {
  const openPositions({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.inactiveGray,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          CupertinoSliverNavigationBar(
            largeTitle: Text('Open Positions'),
            leading: CupertinoButton(
                padding: EdgeInsets.zero,
                child: Icon(CupertinoIcons.arrow_left, size: 28),
                onPressed: () {
                  Navigator.of(context).push(CupertinoPageRoute(
                      builder: (BuildContext context) => const Menu()));
                }

                ///need to figure out how to do the onpressed
                ),
            trailing: CupertinoButton(
              padding: EdgeInsets.zero,
              child: Icon(CupertinoIcons.add, size: 28),
              onPressed: null,
            ),
          ),
        ],
        body: Container(
          child: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Text(
                                '''We currently have the following positions open:''',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 28),
                              ),
                            ),
                            Divider(color: CupertinoColors.black),
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.all(4),
                              child: Text(
                                '\u2022     Medical data manager',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.all(4),
                              child: Text(
                                '\u2022     Research associate (deep learning in medical imaging)',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.all(4),
                              child: Text(
                                '\u2022     Graduate student (deep learning in medical imaging)',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left,
                              ),
                            ),

/*
                            Center(
                              child: Cube(
                                onSceneCreated: (Scene scene) {
                                  scene.world.add(Object(
                                      fileName:
                                          'textFile/Human skeleton HD.obj'));
                                },
                              ),
                            ),

 */
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
