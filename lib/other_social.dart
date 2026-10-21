import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otlop/app_style.dart';

class Other_Social extends StatelessWidget {
  const Other_Social({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Divider(thickness: 1, color: Color(0xff000000))),
            Text(
              "  Or With  ",
              style: AppStyle.style14SemiBold.copyWith(
                color: Color(0xff999EA1),
              ),
            ),
            Expanded(child: Divider(thickness: 1, color: Color(0xff000000))),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 160,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                    side: BorderSide(color: Color(0xffCDD1E0)),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset("assets/icons/githup.svg"),
                    Text(
                      "GitHub",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff242A31),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 160,
              height: 45,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                    side: BorderSide(color: Color(0xffCDD1E0)),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset("assets/icons/gitlab.svg"),
                    Text(
                      "GitLab",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff242A31),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
