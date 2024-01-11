import 'package:flutter/material.dart';
import 'package:fireflutter/screens/Register_screen.dart';
import 'package:fireflutter/screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromARGB(255, 169, 128, 213),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150, left: 20),
              child: SizedBox(
                height: 126,
                width: 113,
                child: Image.asset('assets/images/logo-buah_prev_ui 1.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Healthy",
                style: TextStyle(
                  fontSize: 36,
                  fontFamily: 'poppinsregular',
                  color: Color(0xFF8EFFBB),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 370),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 55,
                    width: 160,
                    child: Material(
                      color: Color.fromARGB(255, 8, 12, 25),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen (),
                            ),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 40,
                            
                          ),
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10), // Spacer between buttons
                  SizedBox(
                    height: 55,
                    width: 160,
                    child: Material(
                      color: Color.fromARGB(255, 8, 12, 25),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                           Navigator.push(context, MaterialPageRoute(
                        builder:(context) => RegisterScreen (),
                        ));
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 40,
                          ),
                          child: Center(
                            child: Text(
                              "Register",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}