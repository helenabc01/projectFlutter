import 'package:flutter/material.dart';
import 'package:project1/ui/colors.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.buttonColor1,
    required this.textoButton,
    required this.colorTxt,
  });
  final Color buttonColor1;
  final String textoButton;
  final Color colorTxt;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        buttonColor1 == mainColor ? second : mainColor;
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor1,
          minimumSize: Size(300, 50),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
      child: Text(
        textoButton,
        style: TextStyle(color: colorTxt, fontSize: 23),
      ),
    );
  }
}
