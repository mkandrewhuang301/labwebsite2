import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:file_picker/file_picker.dart';
import 'package:file_picker_cross/file_picker_cross.dart';
import 'package:file_upload_web/profile/network/network.dart';
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
                /*
                FilePickerCross myFile =
                    await FilePickerCross.importFromStorage(
                        type: FileTypeCross
                            .any, // Available: `any`, `audio`, `image`, `video`, `custom`. Note: not available using FDE
                        fileExtension:
                            'glb' // Only if FileTypeCross.custom . May be any file extension like `dot`, `ppt,pptx,odp`
                        );
                print("HELLO");
                final String name = myFile.fileName!;
                myFile.saveToPath(path: '/my/awesome/folder/' + name);
                print("file path: ${myFile.path}");
                */

                final result = await FilePicker.platform.pickFiles();
                if (result == null) return;
                PlatformFile file = result.files.first;
                print("file name: ${file.name}");

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
