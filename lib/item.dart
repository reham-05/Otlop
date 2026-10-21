import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {
  final String image;
  final String head;
  final String dis;
  final String name;
  final int price;

  const CustomItem({
    super.key,
    required this.image,
    required this.head,
    required this.dis,
    required this.name,
    required this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Card(
            color: Colors.white,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                          height: 200,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 7,
                          vertical: 2,
                        ),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xff000000).withValues(alpha: .6),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        head,
                        style: TextStyle(
                          color: Color(0xffFF5C3F),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      Text(
                        dis,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            price.toString(),
                            style: TextStyle(
                              color: Color(0xff1C1C1E),
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "EGP",
                            style: TextStyle(
                              color: Color(0xff9CA3AF),
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          IconButton(
                            style: IconButton.styleFrom(
                              backgroundColor: Color(0xffFF5C3F),
                              minimumSize: Size(32, 32),
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Item {
  final String image;
  final String head;
  final String dis;
  final String name;
  final int price;

  Item({
    required this.image,
    required this.head,
    required this.dis,
    required this.name,
    required this.price,
  });
}
