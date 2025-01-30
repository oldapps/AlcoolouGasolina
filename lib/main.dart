import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:teste2/widgets/input.widget.dart';
import 'package:teste2/widgets/logo.widget.dart';

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

class Homepage extends StatelessWidget {
  var _gasCtrl = new MoneyMaskedTextController();
  var _alcCtrl = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          Logo(),
          Input(label: "Gasolina", ctrl: _gasCtrl),
          Input(label: "Alcool", ctrl: _alcCtrl),
          Container(
            margin: EdgeInsets.all(30),
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(60),
            ),
            child: FloatingActionButton(
              child: Text(
                "Calcular",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 25,
                    fontFamily: "BigShouldersDisplay-Light.ttf"),
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
