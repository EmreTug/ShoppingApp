import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoppingapp/core/extensions/color_extension.dart';
import 'package:shoppingapp/feature/home/homeview/view/home_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: "6350FF".toColor(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Image.asset("assets/images/1.png"),
                )),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 89, top: 16.0),
                  child: Image.asset("assets/images/3.png"),
                )),
            Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 50, top: 205.0),
                  child: Image.asset("assets/images/2.png"),
                )),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 99, top: 27),
                  child: Image.asset("assets/images/4.png"),
                )),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, top: 53),
                  child: Text(
                    "Welcome back",
                    style: GoogleFonts.raleway(
                        color: Colors.white,
                        fontSize: 65,
                        fontWeight: FontWeight.w800),
                  ),
                )),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: MediaQuery.of(context).size.height - 265,
                margin: const EdgeInsets.only(top: 265),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 36, left: 50),
                        child: Text(
                          "Login",
                          style: GoogleFonts.raleway(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 36, left: 50),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.email_outlined,
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Email"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          left: 50,
                          right: 50,
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            isCollapsed: true,
                            hintText: "Email",
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 36, left: 50),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.lock_outline,
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Password"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          left: 50,
                          right: 50,
                        ),
                        child: TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            isCollapsed: true,
                            hintText: "Password",
                            
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 50, top: 10),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text("Forgot password?"),
                        ),
                      ),
                    ),
                    GestureDetector(
                     onTap: () {
                        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const HomeView()));
                     } ,
                      child: Align(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 314,
                            decoration: BoxDecoration(
                              color: "6350FF".toColor(),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                "Login",
                                style: GoogleFonts.raleway(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Create account"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
