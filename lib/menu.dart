import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './main.dart';
import './pages.dart';
import './blog.dart';
import 'package:file_picker/file_picker.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          CupertinoSliverNavigationBar(
            largeTitle: Text('Page navigaton'),
            leading: CupertinoButton(
                padding: EdgeInsets.zero,
                child: Icon(CupertinoIcons.arrow_left, size: 28),
                onPressed: () {
                  Navigator.of(context).push(CupertinoPageRoute(
                      builder: (BuildContext context) =>
                          const PageScaffoldApp()));
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
                            Pages(text: "New: Bone Imaging"),
                            /*
                            Pages(text: "Lab Members (as of 3/1/2021"),
                            Pages(text: "Open Positions"),
                            Pages(text: "Publications"),
                            Pages(text: "Research"),
                            Pages(text: "Bone info"),
                            Pages(text: "New: Bone Imaging"),

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
      // Uncomment to change the background color
      // backgroundColor: CupertinoColors.systemPink,
    );
  }
}
