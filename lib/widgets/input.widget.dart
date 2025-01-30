import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class Input extends StatelessWidget {
  var label = "";
  var ctrl = new MoneyMaskedTextController();

  Input({
    required this.label,
    required this.ctrl,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          alignment: Alignment.centerRight,
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: "BigShouldersDisplay-Light.ttf",
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
            child: TextFormField(
          controller: ctrl,
          keyboardType: TextInputType.number,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontFamily: "BigShouldersDisplay-Light.ttf",
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ))
      ],
    );
  }
}
