import 'package:flutter/material.dart';
import 'package:imc/android/material.app.dart';
import 'package:imc/ios/cupertino.app.dart';
import 'dart:io' show Platform;
// void main() {
//   runApp(MyMaterialApp());
// }

void main() {
  Platform.isIOS ? runApp(MyCupertinoApp()) : runApp(MyMaterialApp());
}
