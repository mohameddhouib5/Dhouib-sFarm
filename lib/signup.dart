import 'package:flutter/material.dart';
import 'package:dhouibs_farm/signin.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 120,
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
              'Sign Up',
              style: TextStyle(
                fontSize: 35,
                height: -5.9,
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
                      labelText: "Nom & prenom",
                      hintText: "Entrez votre nom & prénom",
                      icon: Icon(Icons.person)),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(
                  height: 10,
                  width: 150,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: "Mot de passe",
                      hintText: "Entrez un mot de passe",
                      icon: Icon(Icons.lock)),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10,
                  width: 150,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: "Confirmeation Mot de passe",
                      hintText: "Confirmer votre mot de passe",
                      icon: Icon(Icons.lock)),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10,
                  width: 150,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: "Email",
                      hintText: "Entrez votre Email",
                      icon: Icon(Icons.email)),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10,
                  width: 150,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: "Numero de télephone",
                      hintText: "Entrez votre numero de téléphone ",
                      icon: Icon(Icons.phone)),
                  keyboardType: TextInputType.number,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10,
                  width: 150,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: "Adresse de livraison ",
                      hintText: "Entrez votre Adresse de livraison",
                      icon: Icon(Icons.home)),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(350, 50),
                    backgroundColor: const Color.fromARGB(255, 57, 105, 188),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const SignInPage();
                      }),
                    );
                  },
                  child: const Text(
                    'Sign Up',
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
