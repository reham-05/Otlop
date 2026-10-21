import 'package:flutter/material.dart';
import 'package:otlop/button.dart';
import 'package:otlop/hoom.dart';
import 'package:otlop/other_social.dart';
import 'package:otlop/title.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login2State();
}

class _Login2State extends State<Login> {
  bool isObscure = true;
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 41, left: 29, right: 29),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title(
                  title1: "Hi, Welcome Back! 👋",
                  subtitle: "Hello again, you’ve been missed!",
                ),
                SizedBox(height: 40),
                Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFF5C39),
                  ),
                ),
                SizedBox(height: 8),
                SizedBox(
                  height: 41,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0xffC6C6C6)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0xff595555)),
                      ),
                      hint: Text(
                        "Enter your Email",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff999EA1),
                        ),
                      ),
                    ),
                  ),
                ),
                // Spacer(flex: 1),
                SizedBox(height: 10),
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFF5C39),
                  ),
                ),
                SizedBox(height: 8),
                SizedBox(
                  height: 41,
                  child: TextField(
                    obscureText: isObscure,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0xffC6C6C6)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Color(0xff595555)),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                        icon: Icon(
                          isObscure ? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                      hint: Text(
                        "Please Enter Your Password",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff999EA1),
                        ),
                      ),
                    ),
                  ),
                ),
                // Spacer(flex: 2),
                SizedBox(height: 20),
                Row(
                  children: [
                    Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(4),
                      ),
                      value: isCheck,
                      onChanged: (value) {
                        setState(() {
                          isCheck = !isCheck;
                        });
                      },
                      activeColor: Colors.white,
                      checkColor: Colors.black,
                      side: BorderSide(
                        color: Colors.black,
                        width: 1,
                        strokeAlign: 2,
                      ),
                    ),

                    Text(
                      "Remember Me",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff000C14),
                      ),
                    ),
                    Spacer(),
                    TextButton(
                      style: TextButton.styleFrom(
                        overlayColor: Color(0xff3c3b3b),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffFB344F),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Button(
                  name: "Login",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                ),
                SizedBox(height: 20),
                Other_Social(),
                SizedBox(height: 200),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account ? ",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff999EA1),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        overlayColor: Color(0xff3c3b3b),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffFF5C39),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
