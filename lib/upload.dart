import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:file_picker/file_picker.dart';
import './imaging.dart';

class upload extends StatelessWidget {
  const upload({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
            height: 100,
            margin: EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () async {
                final result = await FilePicker.platform.pickFiles();
                if (result == null) return;
                final file = result.files.first;
                print("file path: ${file.path}");

                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Imaging(path: file.path)),
                );
              },
              child: Text('upload Files'),
            )),
      ),
    );
  }
}
