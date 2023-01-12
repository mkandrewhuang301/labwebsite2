import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import './links.dart';
import './menu.dart';
import 'package:file_picker/file_picker.dart';

void main() => runApp(const PageScaffoldApp());

class PageScaffoldApp extends StatelessWidget {
  const PageScaffoldApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Lab website',
      theme: CupertinoThemeData(
        barBackgroundColor: CupertinoColors.secondarySystemBackground,
        brightness: Brightness.light,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _count = 0;
  String data = '';
  fetchFileData() async {
    String responseText;
    responseText = await rootBundle.loadString('textFile/data.txt');
    setState(() {
      data = responseText;
    });
  }

  @override
  void initState() {
    fetchFileData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          CupertinoSliverNavigationBar(
            largeTitle: Text('Home'),
            leading: CupertinoButton(
                padding: EdgeInsets.zero,
                child: Icon(CupertinoIcons.line_horizontal_3, size: 28),
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
                            Text(
                              'Bone Project ',
                              style: TextStyle(fontSize: 40),
                            ),
                            Divider(color: CupertinoColors.black),
                            const Image(
                              image: AssetImage('textFile/bone.jpeg'),
                            ),
                            Text(
                              data,
                              style: TextStyle(fontSize: 20),
                            ),
                            Links()
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
