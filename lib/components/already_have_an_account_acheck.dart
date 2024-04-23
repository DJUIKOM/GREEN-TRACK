import 'package:flutter/material.dart';
import 'package:greentrack/constants.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Screens/Login/login_screen.dart';
import '../Screens/Signup/signup_screen.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function? press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Vous n'avez pas de compte ? " : "Vous avez déjà un compte ? ",
          style: const TextStyle(color: Colors.grey),
        ),
        TextButton(
          onPressed: (){
            login? SignUpScreen().launch(context):LoginScreen().launch(context);
          },
          child: Text(login ? "S'inscrire" : "Se connecter", style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          )),

        )
      ],
    );
  }
}
