import 'package:flutter/material.dart';
import 'package:dhouibs_farm/magasin.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 251, 251),
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 140,
            child: Container(
              height: 150,
              width: 150,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/111.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Center(
            child: Text(
              'Sign in',
              style: TextStyle(
                fontSize: 35,
                height: -3,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(height: 40),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: "Email",
                      hintText: "Entrez votre Email",
                      icon: Icon(Icons.person)),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 50,
                  width: 150,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: "Mot de passe",
                      hintText: "Entrez votre mot de passe",
                      icon: Icon(Icons.lock)),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(350, 45),
                    backgroundColor: const Color.fromARGB(255, 57, 105, 188),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const Magasin();
                      }),
                    );
                  },
                  child: const Text(
                    'Sign In',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
