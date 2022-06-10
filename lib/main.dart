import 'package:flutter/material.dart';
import 'package:maintaining_states_flutter_concept/Screens/main_one.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Maintaining States in Flutter - A concept",
      home: MainOne(),
    );
  }
}
