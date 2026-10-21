import 'package:flutter/material.dart';

class CustomProduct extends StatelessWidget {
  final String pic;
  final String category;
  final void Function()? onPressed;

  const new({
    super.key,
    required this.pic,
    required this.category,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(color: Color(0xffF9FAFB)),
              ),
            ),
            onPressed: onPressed,
            child: Image.asset(pic, height: 40, width: 40),
          ),
        ),
        SizedBox(height: 5),
        Text(
          category,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Color(0xff374151),
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class cat {
  final String pic;
  final String category;
  final void Function()? onPressed;

  new({required this.pic, required this.category, required this.onPressed});
}
