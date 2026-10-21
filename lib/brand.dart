import 'package:flutter/material.dart';

class CustomBrand extends StatelessWidget {
  final String brand;

  const new({super.key, required this.brand});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shadowColor: Color(0xff000000).withValues(alpha: .03),

          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: Color(0xffF3F4F6)),
          ),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Text(
            brand,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xff1F2937),
            ),
          ),
        ),
      ),
    );
  }
}

class Brand {
  final String brand;

  new({required this.brand});
}
