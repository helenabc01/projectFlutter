import 'package:flutter/material.dart';
import 'package:project1/ui/colors.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 170,
              )
            ],
          ),
        ));
  }
}
