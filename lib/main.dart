import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}
/*
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.green,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
            image: AssetImage("lib/assets/goat.jpeg"),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(
                size: 150.00,
              ),
              Form(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter E-mail"
                        ),
                        keyboardType: TextInputType.emailAddress,
                      )
                    ],
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}
*/
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          const Image(
            image: AssetImage("lib/assets/goat.jpeg"),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const FlutterLogo(
                size: 150.00,
              ),
              Form(
                  child: Theme(
                    data: ThemeData(
                      brightness: Brightness.dark,
                      primarySwatch: Colors.teal,
                      inputDecorationTheme: const InputDecorationTheme(
                        hintStyle: TextStyle(
                          color: Colors.teal,
                          fontSize: 20.0
                        )
                      )
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: "Enter E-mail",
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: "Enter password",
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 40.0)
                          ),
                          MaterialButton(
                            height: 50.0,
                            minWidth: 70.0,
                            color: Colors.cyanAccent,
                            textColor: Colors.redAccent,
                            child: Icon(FontAwesomeIcons.rightToBracket),
                            onPressed: () => {},
                            splashColor: Colors.black87,
                          )
                        ],
                      ),
                    ),
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}