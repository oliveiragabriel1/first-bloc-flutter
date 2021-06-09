import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imc/blocs/imc.bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = new ImcBloc();
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Cálculo de IMC"),
      ),
      child: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: CupertinoTextField(
            placeholder: "Altura (cm)",
            controller: bloc.heightCtrl,
            keyboardType: TextInputType.number,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: CupertinoTextField(
            placeholder: "Peso (kg)",
            controller: bloc.weightCtrl,
            keyboardType: TextInputType.number,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            bloc.result,
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: CupertinoButton.filled(
            child: Text("Calcular"),
            onPressed: () {
              setState(() {
                bloc.calculate();
              });
            },
          ),
        ),
      ]),
    );
  }
}
