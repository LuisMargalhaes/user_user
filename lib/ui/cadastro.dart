import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Cadastro extends StatelessWidget {
  Cadastro({super.key});
  UserController userController = UserController();
  final nomeController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Login()));
          },
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 40),
                  const Text(
                    'Cadastre-se no Haki List!',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Image.asset('/listacadastro.png', width: 225),
                  const SizedBox(height: 32),
                  TextFormField(
                    controller: nomeController,
                    decoration: const InputDecoration(
                      hintText: 'Usuário',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: 'Senha',
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                      onPressed: () {
                        userController.cadastro(context, nomeController.text,
                            passwordController.text);
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Theme.of(context).primaryColor,
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text('Cadastrar-se')),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (_) => Login()),
                              (route) => false);
                        },
                        child: const Text('Efetuar Login')),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

