import 'package:cred_pal_task/bootstrapper.dart';
import 'package:cred_pal_task/cred_pal_app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppBootstrapper.init(mainAppWidget: const CredPalApp(), runApp: runApp);
}
