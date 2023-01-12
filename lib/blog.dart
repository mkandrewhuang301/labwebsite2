import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './menu.dart';

class Blog extends StatelessWidget {
  const Blog({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          CupertinoSliverNavigationBar(
            largeTitle: Text('Blog'),
            leading: CupertinoButton(
                padding: EdgeInsets.zero,
                child: Icon(CupertinoIcons.arrow_left, size: 28),
                onPressed: () {
                  Navigator.of(context).push(CupertinoPageRoute(
                      builder: (BuildContext context) => const Menu()));
                }),
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
                          children: const [
                            Text("Lab Blog"),
                            /*
                            Pages(
                                text: "Lab Members (as of 3/1/2021",
                                newPage: Blog),
                            Pages(text: "Open Positions", newPage: Blog()),
                            Pages(text: "Publications", newPage: Blog()),
                            Pages(text: "Research", newPage: Blog()),
                            Pages(text: "Shared Resources", newPage: Blog()),
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
