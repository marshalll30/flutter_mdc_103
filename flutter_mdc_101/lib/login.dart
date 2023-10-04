import 'package:flutter/material.dart';
import 'package:flutter_mdc_101/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernamecontroler = TextEditingController();
  final _passwordcontroler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Image(image: AssetImage("assets/img/diamond.png")),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("SHRINE"),
              ),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _usernamecontroler,
                  decoration: InputDecoration(
                    filled: true,
                    labelText: "username",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _passwordcontroler,
                  decoration:
                      InputDecoration(filled: true, labelText: "Password"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          _usernamecontroler.clear();
                          _passwordcontroler.clear();
                        },
                        child: Text("CANCEL")),
                    ElevatedButton(
                        onPressed: () {
                          if (_usernamecontroler.text == "admin" &&
                              _passwordcontroler.text == "admin") {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text("login sukses"),
                              backgroundColor: Colors.green,
                            ));
                            Navigator.pushNamed(context, '/home');
                            /*Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
                          );*/
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text("login gagal"),
                              backgroundColor: Colors.red,
                            ));
                            _usernamecontroler.clear();
                            _passwordcontroler.clear();
                          }
                        },
                        child: Text("NEXT")),
                  ],
                ),
              ),
            ],
            /*
            children: [
            Image(image: image),
            Text(data),
            SizedBox(),
            TextField(),
            TextField(),
            TextButton(onPressed: onPressed, child: child),
            ElevatedButton(onPressed: onPressed, child: child),
            */
          ),
        ),
      ),
    );
  }
}
