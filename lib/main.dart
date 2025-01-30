import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          Logo(),
          Row(
            children: [
              Container(
                width: 150,
                alignment: Alignment.centerRight,
                child: Text(
                  "Gasolina",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontFamily: "BigShouldersDisplay-Light.ttf",
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                  child: TextFormField(
                controller: _gasCtrl,
                keyboardType: TextInputType.number,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontFamily: "BigShouldersDisplay-Light.ttf",
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
