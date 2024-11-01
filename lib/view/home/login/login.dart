import 'package:flutter/material.dart';
import 'package:project1/ui/colors.dart';
import 'package:project1/ui/fonts.dart';
import 'package:project1/utils/navigation/navigator.dart';
import 'package:project1/utils/widgets/button.dart';
import 'package:project1/utils/widgets/input.dart';
import 'package:project1/view/home/sign-up/signUp.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
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
                child: Image.asset(
                  'lib/assets/fantasma.png',
                  fit: BoxFit.cover,
                )),
            Container(
              height: MediaQuery.of(context).size.height - 170,
              decoration: const BoxDecoration(
                  color: background,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(75))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      color: title,
                      fontWeight: FontWeight.w800,
                      fontSize: 35,
                      fontFamily: titleFont,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28.0),
                    child: Column(
                      children: [
                        InputWidget(
                          nome: 'Email',
                          tip: TextInputType.emailAddress,
                          notVisible: false,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InputWidget(
                          nome: 'Password',
                          tip: TextInputType.visiblePassword,
                          notVisible: true,
                        ),
                      ],
                    ),
                  ),
                  const ButtonWidget(
                      buttonColor1: mainColor,
                      textoButton: 'Login',
                      colorTxt: bntColor),
                  InkWell(
                    onTap: () {
                      AppNavigator.replace(context, const SignUpPage(), null);
                    },
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                              text: "Don't have any account? ",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: text,
                                  fontFamily: runingFont)),
                          TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: mainColor,
                                  decoration: TextDecoration.underline)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
