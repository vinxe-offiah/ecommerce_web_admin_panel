import 'package:ecommerce_web_admin_panel/app.dart';
import 'package:ecommerce_web_admin_panel/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  //Ensure that widgets are initialized
  WidgetsFlutterBinding.ensureInitialized();

  //Initialize GetX Local Storage

  //Remove # from url

  //Initialize Firebase and Authentication Repository
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  //Main app
  runApp(const MyApp());
}
