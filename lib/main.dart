import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mrt_map/screens/homepage.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
    ]
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage("assets/images/mrt_map.jpg"), context);
    return MaterialApp(
      title: 'Flutter Demo',
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      );
  }
}


