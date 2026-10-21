import 'package:flutter/cupertino.dart';

class title extends StatelessWidget {
  final String title1;
  final String subtitle;

  const new({super.key, required this.title1, required this.subtitle});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title1,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Color(0xff999EA1),
          ),
        ),
      ],
    );
  }
}

class TitleOpject {
  final String title;
  final String subtitle;

  new({required this.title, required this.subtitle});
}
