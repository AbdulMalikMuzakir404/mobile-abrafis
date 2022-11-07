import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:project/screens/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordVisible = false;
  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Text("Masuk",
                style: TextStyle(fontSize: 30, color: Color(0xff2F5D62))),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                width: 200,
                height: 150,
                child: Image.asset('images/logo.png'),
              ),
            ),
            Text("Abrafis",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2F5D62))),
            Text("Jadikan kehadiranmu menjadi sebuah keberhasilan dalam hidup",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  letterSpacing: 1,
                )),
            const SizedBox(
              height: 30,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        labelStyle: TextStyle(color: Colors.black),
                        labelText: 'Email',
                        hintStyle: TextStyle(color: Colors.black),
                        prefixIcon:
                            Icon(Icons.mail_outline, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0))),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        labelStyle: TextStyle(color: Colors.black),
                        labelText: 'Password',
                        hintStyle: TextStyle(color: Colors.black),
                        prefixIcon:
                            Icon(Icons.lock_outline, color: Colors.black),
                      ),
                    ),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) {
                    //       return #()
                    //     })
                    // );
                  },
                  child: Text("Masuk"),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(300, 20),
                      primary: Color(0xff2F5D62),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Belum Punya Akun?"),
                TextButton(
                  child: const Text(
                    'Daftar',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => RegisterScreen());
                    Navigator.push(context, route);
                  },
                )
              ],
            ),
          ],
        ),
      ],
    ));
  }
}
