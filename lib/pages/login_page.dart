import 'package:flutter/material.dart';
import 'package:flutter_basic_application_1/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";

  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    String name;
    return Material(
        color: context.canvasColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/fireboy.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome ",
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter UserName",
                        labelText: "Username",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter password",
                        labelText: "password",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "password cannot be empty";
                        } else if (value.length < 6) {
                          return "password length should be greater then 6";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.deepPurple,
                      child: InkWell(
                        splashColor: Colors.blue,
                        onTap: () async {
                          setState(() {
                            changeButton = true;
                          });
                          await Future.delayed(const Duration(seconds: 1));
                          await Navigator.pushNamed(
                              context, MyRoutes.homeRoute);
                          setState(() {
                            changeButton = false;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          height: 40,
                          width: changeButton ? 50 : 150,
                          alignment: Alignment.center,
                          child: changeButton
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.pinkAccent,
                                )
                              : const Text("Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
