import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/core/themes/mycolors.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          constraints:
              BoxConstraints(minHeight: MediaQuery.of(context).size.height),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: GoogleFonts.poppins(
                      color: darkColor,
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Welcome Back! Login to your account to continue.",
                      style: GoogleFonts.poppins(
                          fontSize: 14, color: darkColor.withOpacity(0.5))),
                  SizedBox(
                    height: 29,
                  ),
                  TextField(
                    style: GoogleFonts.poppins(),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(240, 240, 245, 1),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                      ),
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: darkColor.withOpacity(0.5)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: darkColor.withOpacity(0.5)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: darkColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    style: GoogleFonts.poppins(),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(240, 240, 245, 1),
                      prefixIcon: Icon(
                        Icons.vpn_key_outlined,
                      ),
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: darkColor.withOpacity(0.5)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: darkColor.withOpacity(0.5)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: darkColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text("Forgot Password?",
                        style: GoogleFonts.poppins(fontSize: 14, color: blue)),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 62,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, "/home");
                        },
                        child: Text(
                          "Login",
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: RichText(
                        text: TextSpan(
                      text: "Don't have an account? ",
                      style: GoogleFonts.poppins(
                          fontSize: 14, color: darkColor.withOpacity(0.5)),
                      children: [
                        TextSpan(
                            text: "Create One",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: darkColor,
                            )),
                      ],
                    )),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
