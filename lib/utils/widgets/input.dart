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
    return Container(
      padding: const EdgeInsets.only(left: 16),
      decoration: const BoxDecoration(
          color: background,
          boxShadow: [
            BoxShadow(
                color: cinzinha,
                blurRadius: 7,
                offset: Offset(0, 3),
                spreadRadius: 5)
          ],
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: TextFormField(
        decoration: InputDecoration(
          focusColor: mainColor,
          labelText: nome,
          border: InputBorder.none,
        ),
        keyboardType: tip,
        obscureText: notVisible,
      ),
    );
  }
}
