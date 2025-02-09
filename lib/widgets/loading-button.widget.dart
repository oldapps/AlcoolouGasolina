import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  var busy = false;
  var invert = false;
  Function func;
  var text = "";
  var corDaBorda = "";

  LoadingButton({
    required this.busy,
    required this.func,
    required this.invert,
    required this.text,
    required this.corDaBorda,
  });

  @override
  Widget build(BuildContext context) {
    return busy
        ? Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.white,
                ),
              ),
            ],
          )
        : Container(
            margin: EdgeInsets.all(30),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(100)),
            child: FloatingActionButton(
              backgroundColor:
                  invert ? Theme.of(context).primaryColor : Colors.white,
              onPressed: () async {
                await func(); // Agora o botão aguarda a execução da função assíncrona
              },
              child: Text(
                text,
                style: TextStyle(
                    color:
                        invert ? Colors.white : Theme.of(context).primaryColor,
                    fontSize: 20,
                    fontFamily: "BigShouldersDisplay-Light.ttf"),
              ),
            ),
          );
  }
}
