import 'package:demo/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String username = "";
  String password = "";
  String error = "";
  bool changeButton = false;

  bool validateForm() {
    return username.isNotEmpty && password.isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 80,
              ),
              const Image(
                width: 180,
                height: 180,
                image: Svg('assets/images/key_icon.svg'),
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Welcome",
                style: TextStyle(fontSize: 22),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Enter username", labelText: "Username"),
                onChanged: (value) => {
                  setState(() => {
                        if (value.isNotEmpty)
                          {error = "", username = value}
                        else
                          {error = "Please enter the username and password!"}
                      })
                },
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: "Enter password", labelText: "Password"),
                onChanged: (value) => {
                  setState(() => {
                        if (value.isNotEmpty)
                          {error = "", password = value}
                        else
                          {error = "Please enter the username and password!"}
                      })
                },
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                error,
                style: const TextStyle(fontSize: 16, color: Colors.red),
              ),

              const SizedBox(
                height: 44,
              ),
              // ElevatedButton(
              //     onPressed: () {
              //       Navigator.pushNamed(context, "/home");
              //     },
              //     child: const Text("Login")),
              Material(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                child: InkWell(
                  splashColor: Colors.purple,
                  onTap: () async {
                    if (!validateForm()) {
                      return setState(() {
                        error = "Please enter the username and password!";
                      });
                    }
                    setState(() {
                      error = "";
                      changeButton = true;
                    });
                    await Future.delayed(const Duration(seconds: 1));
                    // ignore: use_build_context_synchronously
                    Navigator.pushNamed(context, AppRoutes.home);
                  },
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    width: changeButton ? 50 : 150,
                    height: 50,
                    alignment: Alignment.center,
                    child: changeButton
                        ? const Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : const Text(
                            "Login",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
