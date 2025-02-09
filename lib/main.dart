import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:teste2/pages/home.page.dart';
import 'package:teste2/widgets/input.widget.dart';
import 'package:teste2/widgets/loading-button.widget.dart';
import 'package:teste2/widgets/logo.widget.dart';
import 'package:teste2/widgets/submit-form.dart';
import 'package:teste2/widgets/sucess.widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Alcool ou Gasolina',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: Homepage());
  }
}


