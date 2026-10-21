import 'package:flutter/material.dart';
import 'package:otlop/explorel.dart';
import 'package:otlop/hoom.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key, required this.select});
  final int select;

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.vertical(top: Radius.circular(40)),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xffFFFFFF),
        selectedItemColor: Color(0xffFF6B6B),
        unselectedItemColor: Color(0xff9CA3AF),
        selectedFontSize: 15,
        unselectedFontSize: 15,
        currentIndex: select,
        onTap: (index) {
          setState(() {
            select = index;
          });
          if (select == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Explor()),
            );
          } else if (select == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                Icon(Icons.shopping_bag_outlined),

                Positioned(
                  top: -2,
                  right: -2,
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(999),
                      border: BoxBorder.all(color: Colors.white),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff000000).withValues(alpha: .03),
                          blurRadius: 14,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "4",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description_outlined),

            label: "Orders",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),

            label: "Profile",
          ),
        ],
      ),
    );
  }
}
