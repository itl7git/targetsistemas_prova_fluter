import 'package:flutter/material.dart';
import 'package:targetsistemas_prova_flutter/styles/button.dart';
import 'package:targetsistemas_prova_flutter/widgets/custom_text_field.dart';
import 'package:targetsistemas_prova_flutter/widgets/gradient_container.dart';
import 'package:url_launcher/link.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GradientContainer(
            child: Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            child: Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(bottom: 5, left: 5),
              child: const Text(
                'Usuário',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const CustomTextField(
            prefix: Icon(Icons.person),
            textInputType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            child: Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(bottom: 5, left: 5),
              child: const Text(
                'Senha',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const CustomTextField(
            prefix: Icon(Icons.lock),
            textInputType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
              style: buttonStyle,
              onPressed: () {},
              child: const Text(
                'Entrar',
                style: TextStyle(color: Colors.white),
              )),
          const SizedBox(
            height: 50,
          ),
          Link(
            uri: Uri.parse('https://google.com.br'),
            target: LinkTarget.self,
            builder: (BuildContext ctx, FollowLink? openLink) {
              return TextButton(
                onPressed: openLink,
                child: const Text(
                  'Política de privacidade',
                  style: TextStyle(color: Colors.white),
                ),
              );
            },
          ),
        ],
      ),
    )));
  }
}
