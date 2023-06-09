import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({super.key});

  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  final TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/images/login_screen1.png'),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Image.asset(
                        'assets/images/vti-logo.jpg',
                        width: 120,
                      ),
                      const SizedBox(height: 100),
                      const Text(
                        "LOGIN",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 40),
            Container(
                margin: const EdgeInsets.only(left: 50.0, right: 50.0),
                child: Column(children: [
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 207, 207, 207)
                                .withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,
                              controller: emailController,
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                hintText: "Email or phone number",
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16,
                            ),
                            child: TextField(
                              keyboardType: TextInputType.visiblePassword,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  border: InputBorder.none),
                              obscureText: true,
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      )),
                  const SizedBox(height: 19),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent.shade400,
                      minimumSize: const Size.fromHeight(50),
                    ),
                    onPressed: () {
                      AutoRouter.of(context).pushNamed('/messenger');
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ])),
          ],
        ));
  }
}
