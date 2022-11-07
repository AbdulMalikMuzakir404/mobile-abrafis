import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
            Text("DAFTAR",
                style: TextStyle(fontSize: 30, color: Color(0xff2F5D62))),
            const SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                width: 200,
                height: 150,
                child: Image.asset('images/daftar_image.png'),
              ),
            ),
            Text(
                "Jangan pernah lelah dengan mimpi, jika tidak terpenuhi. Ketakutan akan kegagalan seharusnya tidak menghalangimu dari jalan kepercayaan diri.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
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
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        labelStyle: TextStyle(color: Colors.black),
                        labelText: 'Nama Lengkap',
                        hintStyle: TextStyle(color: Colors.black),
                        prefixIcon: Icon(Icons.verified_user_rounded,
                            color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
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
                      keyboardType: TextInputType.visiblePassword,
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
                  onPressed: () {},
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
                Text("Buat Akun",
                    style: TextStyle(
                        color: Color(0xff2F5D62), fontWeight: FontWeight.bold))
              ],
            ),
          ],
        ),
      ],
    ));
  }
}
