import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Head extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good evening 🥐",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff6B7280),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Alex",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff111827),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
            Spacer(),
            Stack(
              children: [
                IconButton(
                  style: IconButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xff000000).withValues(alpha: .05),
                      ),
                      borderRadius: BorderRadius.circular(99),
                    ),
                    shadowColor: Color(0xff000000).withValues(alpha: .9),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.notifications_none_outlined),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, top: 13),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1),
                    borderRadius: BorderRadius.circular(999),
                    color: Color(0xffFF5C3F),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 42,
          width: 240,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              padding: EdgeInsetsDirectional.all(2),
              backgroundColor: Color(0xffFFF5F3),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.location_on, color: Color(0xffFF6B4A), size: 20),
                Text(
                  "14 Tahrir Square, Cairo",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 30,
                  color: Color(0xffFF6B4A),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0xff000000).withValues(alpha: .03),
                blurRadius: 20,
                offset: Offset(0, 4),
              ),
            ],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Stack(
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Color(0xff9CA3AF)),
                  hint: Text(
                    "Search coffee, cakes, donuts...",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff9CA3AF),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: Color(0xffF3F4F6)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: Color(0xffF3F4F6)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: Color(0xffF3F4F6)),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(top: 4, right: 5),
                child: IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: Color(0xffFFF5F3),
                  ),
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/icons/arrow.svg",
                    width: 12,
                    height: 10,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
