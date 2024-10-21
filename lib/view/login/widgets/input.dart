import 'package:flutter/material.dart';
import 'package:project1/ui/colors.dart';

class InputWidget extends StatelessWidget {
  const InputWidget(
      {super.key, required this.nome, this.tip, this.notVisible = false});
  final String nome;
  final TextInputType? tip;
  final bool notVisible;
// focus color
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(focusColor: mainColor, labelText: nome),
      keyboardType: tip,
      obscureText: notVisible,
    );
  }
}
