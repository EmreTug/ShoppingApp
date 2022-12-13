import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:shoppingapp/core/constants/appconstants.dart';
import 'package:shoppingapp/core/extensions/color_extension.dart';
import 'package:shoppingapp/feature/authenticate/login/view/login_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    // Future.microtask(() async {
    //   await Future.delayed(const Duration(seconds: 3));
    //   // ignore: use_build_context_synchronously
    //    Navigator.pushAndRemoveUntil(
    //         context, MaterialPageRoute(builder: (context) => const LoginView()),(route) => true,);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: "6350FF".toColor(),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Find your Gadget",
                  style: GoogleFonts.raleway(
                    fontSize: 65,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Center(
              child: Image.asset(
                AppConstants.SPLASH,
                height: 400,
                width: 400,
              ),
            ),
            GestureDetector(
              onTap: () {
                 Navigator.pushAndRemoveUntil(
            context, MaterialPageRoute(builder: (context) => const LoginView()),(route) => true,);
              },
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 80),
                  width: 314,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      const BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Align(
                      child: Text(
                    "Get Started",
                    style: GoogleFonts.raleway(
                      fontSize: 20,
                      color: "#5956E9".toColor(),
                    ),
                  )),
                ),
              ),
            )
          ],
        ));
  }
}
