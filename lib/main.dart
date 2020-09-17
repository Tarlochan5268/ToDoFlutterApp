import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutterapp/models/TaskData.dart';
import 'package:todo_flutterapp/screens/TaskScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
