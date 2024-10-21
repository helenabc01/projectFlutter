import 'package:flutter/material.dart';
import 'package:project1/ui/colors.dart';
import 'package:project1/view/login/widgets/input.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    Color buttonColor = mainColor;

    return Scaffold(
      backgroundColor: mainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [Image.asset('../../services/assets/fantasma.png')],
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: branquinho,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(100))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                        color: mainColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32.0),
                    child: Column(
                      children: [
                        InputWidget(
                          nome: 'email',
                          tip: TextInputType.emailAddress,
                          notVisible: false,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InputWidget(
                          nome: 'password',
                          tip: TextInputType.visiblePassword,
                          notVisible: true,
                        ),
                      ],
                    ),
                  ),
                  StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState) {
                      return ElevatedButton(
                        onPressed: () {
                          setState(() {
                            buttonColor =
                                buttonColor == mainColor ? second : mainColor;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: buttonColor,
                        ),
                        child: const Text(
                          'Push me',
                          style: TextStyle(color: branquinho),
                        ),
                      );
                    },
                  ),
                  const Text("Don't have any account? Sign Up")
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
