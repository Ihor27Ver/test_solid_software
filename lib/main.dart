import 'package:flutter/material.dart';
import 'package:test_solid_software/app/app.dart';
import 'package:test_solid_software/app/util/extension/orientation_extension.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await OrientationExtension.lockVertical();

  runApp(const App());
}
