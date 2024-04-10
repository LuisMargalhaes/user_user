import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
  Login({super.key});
  UserController userController = UserController();
  final nomeController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Bem-vindo ao Haki List!',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 24),
                Image.asset('/fundo_tela-login.png', width: 225),
                const SizedBox(height: 32),
                TextFormField(
                  controller: nomeController,
                  decoration: const InputDecoration(
                      hintText: 'Usuário',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                      hintStyle: TextStyle(fontSize: 18)),
                ),
                const SizedBox(height: 24),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Senha',
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                    hintStyle: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    userController.login(
                        context, nomeController.text, passwordController.text);
                  },
                  child: const Text('Login'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Theme.of(context).primaryColor,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (_) => Cadastro()),
                            (route) => false);
                      },
                      child: const Text('Cadastre-se')),
                ),
                const SizedBox(height: 32),
                const Text('Ou entre com'),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Image.asset('/apple_logo.png', width: 38),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Image.asset('/gmail-icon.png', width: 30),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Image.asset('/outlook-icon-png.png', width: 30),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
