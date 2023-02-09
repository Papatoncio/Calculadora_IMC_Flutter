import 'dart:ui';

import 'package:flutter/material.dart';

class MyTextInput extends StatelessWidget {
  const MyTextInput(
      {super.key, required this.inputController, required this.label});

  final TextEditingController inputController;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Padding(
        padding: const EdgeInsets.only(left: 100, right: 70),
        child: TextFormField(
          controller: inputController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            prefixIcon: const Icon(Icons.person),
            labelStyle: const TextStyle(fontSize: 18, color: Colors.black38),
            labelText: label,
          ),
        ),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
            color: Colors.black87, fontSize: 17, fontWeight: FontWeight.bold));
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.lblText, required this.press});

  final Text lblText;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          textStyle: const TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500)),
      child: lblText,
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 745,
      margin: const EdgeInsets.only(top: 0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(19, 106, 198, 255).withOpacity(0.5),
      ),
      child: child,
    );
  }
}

class MyTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: 100,
      child: Table(
        children: [
          TableRow(
            children: [Text('Puntaje'), Text('Categoría')],
            decoration: BoxDecoration(
              color: Colors.greenAccent[100],
              border: Border.all(
                width: 1,
                color: Colors.black38,
              ),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
          ),
          TableRow(
              children: [Text('Menor a 18.5'), Text('Peso Bajo')],
              decoration: BoxDecoration(
                color: Colors.greenAccent[100],
                border: Border.all(
                  width: 1,
                  color: Colors.black38,
                ),
              )),
          TableRow(
              children: [Text('18.6 a 24.9'), Text('Peso Normal')],
              decoration: BoxDecoration(
                color: Colors.greenAccent[100],
                border: Border.all(
                  width: 1,
                  color: Colors.black38,
                ),
              )),
          TableRow(
              children: [Text('25 a 29.9'), Text('Sobrepeso')],
              decoration: BoxDecoration(
                color: Colors.greenAccent[100],
                border: Border.all(
                  width: 1,
                  color: Colors.black38,
                ),
              )),
          TableRow(
              children: [Text('30 a 34.9'), Text('Obesidad Leve')],
              decoration: BoxDecoration(
                color: Colors.greenAccent[100],
                border: Border.all(
                  width: 1,
                  color: Colors.black38,
                ),
              )),
          TableRow(
              children: [Text('35 a 39.9'), Text('Obesidad Media')],
              decoration: BoxDecoration(
                color: Colors.greenAccent[100],
                border: Border.all(
                  width: 1,
                  color: Colors.black38,
                ),
              )),
          TableRow(
              children: [Text('Mayor a 40'), Text('Obesidad Morbida')],
              decoration: BoxDecoration(
                color: Colors.greenAccent[100],
                border: Border.all(
                  width: 1,
                  color: Colors.black38,
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
              )),
        ],
      ),
    );
  }
}

class MyAppContainer extends StatelessWidget {
  const MyAppContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(top: 282),
      decoration: const BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.only(
            topLeft: Radius.elliptical(70, 70),
            topRight: Radius.elliptical(70, 70)),
      ),
    );
  }
}
