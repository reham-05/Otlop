import 'package:flutter/material.dart';
import 'package:otlop/login.dart';
import 'package:otlop/title.dart';

import 'button.dart';
import 'forgot.dart';
import 'index.dart';
import 'other_social.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});
  @override
  State<Signup> createState() => _LoginState();
}

class _LoginState extends State<Signup> {
  bool isObscure = true;
  late List<index> take = [
    index(text: "Name", label: "Enter your name"),
    index(text: "Email Address", label: "Enter your email"),
    index(text: "Phone Number", label: "Enter your phone"),
    index(
      text: "Password",
      label: "Please Enter Your Password",
      isObscure: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 29, right: 29),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              title(
                title1: "Create an account",
                subtitle: "Connect with your friends today!",
              ),
              SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40),
                      ListView.builder(
                        itemCount: take.length,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              CustomIndex(
                                text: take[index].text,
                                label: take[index].label,
                                isObsecure: take[index].text == "Password"
                                    ? isObscure
                                    : false,
                                icon: take[index].text == "Password"
                                    ? IconButton(
                                        onPressed: () {
                                          setState(() {
                                            isObscure = !isObscure;
                                          });
                                        },
                                        icon: Icon(
                                          isObscure
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                        ),
                                      )
                                    : null,
                              ),
                            ],
                          );
                        },
                      ),
                      SizedBox(height: 20),
                      Forgot(),
                      SizedBox(height: 20),
                      Button(name: "Sign Up", onPressed: () {}),
                      SizedBox(height: 20),
                      Other_Social(),
                      SizedBox(height: 60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account ?",
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Login(),
                                ),
                              );
                            },
                            child: Text(
                              "Login",
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
            ],
          ),
        ),
      ),
    );
  }
}
