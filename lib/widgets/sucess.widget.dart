import 'package:flutter/material.dart';
import 'package:teste2/widgets/loading-button.widget.dart';

class Success extends StatelessWidget {
  var result = "";
  Function reset;

  Success({
    required this.result,
    required this.reset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            result,
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 25,
                fontFamily: "BigShouldersDisplay-Light.ttf"),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          LoadingButton(
            busy: false,
            func: reset,
            invert: true,
            text: "Calcular novamente",
            corDaBorda: "",
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
