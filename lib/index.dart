import 'package:flutter/material.dart';

class CustomIndex extends StatefulWidget {
  final String text;
  final String label;
  final bool? isObsecure;
  final IconButton? icon;
  const CustomIndex({
    super.key,
    required this.text,
    required this.label,
    this.icon,
    this.isObsecure,
  });
  @override
  State<CustomIndex> createState() => _CustomIndexState();
}

class _CustomIndexState extends State<CustomIndex> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
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
            obscureText: widget.isObsecure ?? false,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xffC6C6C6)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xffC6C6C6)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xff595555)),
              ),
              suffixIcon: widget.icon,
              hint: Text(
                widget.label,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff999EA1),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

class index {
  final String text;
  final String label;
  bool? isObescure;
  final IconButton? icon;

  index({required this.text, required this.label, this.icon, bool? isObscure});
}
