import 'package:flutter/material.dart';
import 'package:dhouibs_farm/signin.dart';
import 'package:dhouibs_farm/signup.dart';
import 'package:dhouibs_farm/magasin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double buttonWidth = 350;
    Color buttonColor = const Color.fromARGB(255, 52, 169, 56);

    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 118, 205, 84),
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 45, 162, 79)),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dhouib's Farm"),
        ),
        body: Center(
          child: Builder(
            builder: (context) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 450,
                  height: 350,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/111.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: buttonWidth,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const SignInPage();
                        }),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(350, 50),
                      backgroundColor: buttonColor,
                    ),
                    child: const Text(
                      'Sign In',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: buttonWidth,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const SignUpPage();
                        }),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(350, 50),
                      backgroundColor: buttonColor,
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: buttonWidth,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const Magasin();
                        }),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(350, 50),
                      backgroundColor: buttonColor,
                    ),
                    child: const Text(
                      'Continuer Sans Connexion',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
