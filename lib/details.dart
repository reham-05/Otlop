import 'package:flutter/material.dart';
import 'package:otlop/button.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .55,
            child: Image.asset("assets/images/dounats.jpg", fit: BoxFit.cover),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 10),
                child: IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: Color(0x66000000),
                  ),
                  onPressed: () {},
                  icon: Padding(
                    padding: const EdgeInsets.only(right: 3),
                    child: Icon(
                      Icons.arrow_back_ios_sharp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Spacer(),
              Container(
                height: MediaQuery.of(context).size.height * .55,
                decoration: BoxDecoration(
                  color: Color(0xffFAFAFA),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsetsGeometry.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Divider(
                            color: Color(0xffE5E7EB),
                            thickness: 3,
                            indent: MediaQuery.of(context).size.width * .40,
                            endIndent: MediaQuery.of(context).size.width * .40,
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsetsDirectional.symmetric(
                                  vertical: 4,
                                  horizontal: 8,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xffFFF0ED),
                                ),
                                child: Text(
                                  "Cilantro",
                                  style: TextStyle(color: Color(0xffFF5C39)),
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                padding: EdgeInsetsDirectional.symmetric(
                                  vertical: 4,
                                  horizontal: 8,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xffF3F4F6),
                                ),
                                child: Text(
                                  "Donuts",
                                  style: TextStyle(color: Color(0xff6B7280)),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Text(
                            "Glazed Donuts",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 30,
                              color: Color(0xff111827),
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                "180",
                                style: TextStyle(
                                  fontSize: 36,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xffFF5C39),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  "EGP",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff9CA3AF),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Divider(color: Color(0xffE5E7EB)),
                          SizedBox(height: 20),
                          Text(
                            "ABOUT THIS ITEM",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color(0xff9CA3AF),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Classic ring donuts hand-dipped in a signature\nsugar glaze while still warm from the fryer.\nLight, pillowy and irresistibly sweet.",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff6B7280),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),

                    SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * .1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff000000).withValues(alpha: .06),
                              offset: Offset(0, -10),
                              blurRadius: 40,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsetsGeometry.all(10),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 60,
                                child: Card(
                                  child: Row(
                                    children: [
                                      IconButton(
                                        style: IconButton.styleFrom(
                                          backgroundColor: Color(0xffF3F4F6),
                                        ),
                                        onPressed: () {
                                          if (num > 0) {
                                            num--;
                                          }
                                          setState(() {});
                                        },
                                        icon: Center(
                                          child: Icon(
                                            Icons.minimize,
                                            color: Color(0xffD1D5DB),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        num.toString(),
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          color: Color(0xff111827),
                                        ),
                                      ),
                                      SizedBox(width: 4),
                                      IconButton(
                                        style: IconButton.styleFrom(
                                          backgroundColor: Color(0xffFF5C39),
                                        ),
                                        onPressed: () {
                                          num++;
                                          setState(() {});
                                        },
                                        icon: Icon(
                                          Icons.add,
                                          color: Color(0xffFFFFFF),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Button(
                                  name: "Add to cart · 180 EGP",
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
