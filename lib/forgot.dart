import 'package:flutter/material.dart';

class Forgot extends StatefulWidget {
  const Forgot({super.key});

  @override
  State<Forgot> createState() => _ForgotState();
}

bool isCheck = false;

class _ForgotState extends State<Forgot> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
          side: BorderSide(color: Colors.black, width: 1, strokeAlign: 2),
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
          style: TextButton.styleFrom(overlayColor: Color(0xff3c3b3b)),
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
    );
  }
}
