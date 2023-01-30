import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:file_picker/file_picker.dart';
import 'package:babylonjs_viewer/babylonjs_viewer.dart';

class Imaging extends StatelessWidget {
  //const Imaging({Key? key}) : super(key: key);
  var path;
  Imaging({required this.path});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: BabylonJSViewer(
                src: path,
              ),
              /*
            Expanded(
              child: Cube(
                onSceneCreated: (Scene scene) {
                  scene.world.add(Object(
                    fileName: path,
                    lighting: true,
                  ));
                  scene.camera.zoom = 8;
                },
              ),
            ),
             */
            ),
          ],
        ),
      ),
    );
  }
}
