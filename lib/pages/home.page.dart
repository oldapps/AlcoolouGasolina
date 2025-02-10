import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:teste2/widgets/logo.widget.dart';
import 'package:teste2/widgets/submit-form.dart';
import 'package:teste2/widgets/sucess.widget.dart';
import 'package:flutter/scheduler.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Color _color = Colors.deepPurple;
  var _gasCtrl = MoneyMaskedTextController();
  var _alcCtrl = MoneyMaskedTextController();

  var _busy = false;

  var _completed = false;

  var _resultText = "Compensa utilizar álcool";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: AnimatedContainer(
          duration: Duration(
            milliseconds: 1200,
          ),
          color: _color,
          child: ListView(
            children: [
              Logo(),
              _completed
                  ? Success(
                      result: _resultText,
                      reset: reset,
                    )
                  : SubmitForm(
                      gasCtrl: _gasCtrl,
                      alcCtrl: _alcCtrl,
                      submitFunc: calculate,
                      busy: _busy)
            ],
          ),
        ));
  }

  Future<void> calculate() async {
    double alc =
        double.parse(_alcCtrl.text.replaceAll(RegExp(r'[,.]'), '')) / 100;
    double gas =
        double.parse(_gasCtrl.text.replaceAll(RegExp(r'[,.]'), '')) / 100;
    double res = alc / gas;

    // Adia o setState sem envolver um Future
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _color = Colors.deepPurpleAccent;
        _completed = false;
        _busy = true;
      });
    });

    return new Future.delayed(
        const Duration(seconds: 1),
        () => setState(() {
              if (res >= 0.7) {
                _resultText = "Compensa utilizar Gasolina!";
              } else {
                _resultText = "Compensa utilizar Álcool!";
              }

              _busy = false;
              _completed = true;
            }));
  }

  reset() {
    setState(() {
      _color = Colors.deepPurple;
      _gasCtrl = MoneyMaskedTextController();
      _alcCtrl = MoneyMaskedTextController();
      _completed = false;
      _busy = false;
    });
  }
}
