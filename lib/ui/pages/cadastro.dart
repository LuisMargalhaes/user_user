import 'package:flutter/material.dart';
import 'package:login_edit/controller/user_controller.dart';
import 'package:login_edit/ui/pages/login.dart';
import 'package:login_edit/widgets/appBar.dart';

// ignore: must_be_immutable
class Cadastro extends StatelessWidget {
  Cadastro({super.key});
  UserController userController = UserController();
  final nomeController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(texto: 'Cadastre-se'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: nomeController,
              decoration: const InputDecoration(
                  hintText: 'Usuário', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 8),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                  hintText: 'Senha', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
                onPressed: () {
                  userController.cadastro(context, nomeController.text, passwordController.text);
                },
                child: const Text('Cadastrar-se')),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                    context, MaterialPageRoute(builder: (_)=> Login()),
                    (route) => false);
                    },
                  child: const Text('Efetuar Login')),
                ),
          ],
        ),
      ),
    );
  }
}