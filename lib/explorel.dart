import 'package:flutter/material.dart';
import 'package:otlop/bottombar.dart';
import 'package:otlop/filer_brand.dart';
import 'package:otlop/filter_broduct.dart';
import 'package:otlop/title.dart';

class Explor extends StatefulWidget {
  const Explor({super.key});

  @override
  State<Explor> createState() => _ExplorState();
}

class _ExplorState extends State<Explor> {
  @override
  Widget build(BuildContext context) {
    List<CatFilter> filter = [
      CatFilter(
        name: "🥤   Frappuccino",
        onPressed: () {},
        bgc: Color(0xffFFF0F0),
      ),
      CatFilter(
        name: "☕   Latte",
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FilterBroduct()),
          );
        },
        bgc: Color(0xffFFF9E6),
      ),
      CatFilter(name: "🍫   Mocha", onPressed: () {}, bgc: Color(0xffF3F4F6)),
      CatFilter(
        name: "☕   Macchiato",
        onPressed: () {},
        bgc: Color(0xffF5F3FF),
      ),
      CatFilter(name: "🍵   Matcha", onPressed: () {}, bgc: Color(0xffECFDF5)),
      CatFilter(name: "🍰   Cake", onPressed: () {}, bgc: Color(0xffFDF2F8)),
      CatFilter(name: "🍩   Donuts", onPressed: () {}, bgc: Color(0xffFFF7ED)),
      CatFilter(name: "🥗   Salad", onPressed: () {}, bgc: Color(0xffEFF6FF)),
    ];
    List<Brands> brand = [
      Brands(char: "S", brand: "Starbucks", onTap: () {}),
      Brands(
        char: "C",
        brand: "Costa",
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FilterBrand()),
          );
        },
      ),
      Brands(char: "C", brand: "Cilantro", onTap: () {}),
      Brands(char: "T", brand: "TBS", onTap: () {}),
    ];
    return Scaffold(
      bottomNavigationBar: BottomBar(select: 1),
      backgroundColor: Color(0xffFAFAFA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              title(title1: "Explore", subtitle: "Browse by category or brand"),
              SizedBox(height: 20),
              Expanded(
                child: ListView(
                  children: [
                    Text(
                      "CATEGORIES",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff9CA3AF),
                      ),
                    ),
                    SizedBox(height: 20),
                    GridView.builder(
                      itemCount: filter.length,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 2.5,
                      ),
                      itemBuilder: (context, index) {
                        return CategoryFilter(
                          name: filter[index].name,
                          bgc: filter[index].bgc,
                          onPressed: filter[index].onPressed,
                        );
                      },
                    ),
                    SizedBox(height: 20),
                    Text(
                      "BRANDS",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff9CA3AF),
                      ),
                    ),
                    SizedBox(height: 10),
                    GridView.builder(
                      itemCount: brand.length,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisSpacing: 10,
                        childAspectRatio: 5,
                      ),
                      itemBuilder: (context, index) {
                        return BrandFilter(
                          char: brand[index].char,
                          brand: brand[index].brand,
                          onTap: brand[index].onTap,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryFilter extends StatelessWidget {
  final String name;
  final void Function()? onPressed;
  final Color bgc;

  const new({super.key, required this.name, this.onPressed, required this.bgc});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      splashColor: Colors.white,
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: bgc,
        ),
        child: Center(child: Text(name)),
      ),
    );
  }
}

class CatFilter {
  final String name;
  final void Function()? onPressed;
  final Color bgc;

  new({required this.name, required this.onPressed, required this.bgc});
}

class BrandFilter extends StatelessWidget {
  final String char;
  final String brand;
  final void Function()? onTap;

  const new({
    super.key,
    required this.char,
    required this.brand,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      splashColor: Colors.white,
      onTap: onTap,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Container(
                padding: EdgeInsetsGeometry.all(10),
                decoration: BoxDecoration(
                  color: Color(0xffFFF5F3),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    char,
                    style: TextStyle(
                      color: Color(0xffFF4D2D),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Text(
                brand,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff1A1A1A),
                ),
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios_sharp, color: Color(0xffD1D5DB)),
            ],
          ),
        ),
      ),
    );
  }
}

class Brands {
  final String char;
  final String brand;
  final void Function()? onTap;

  new({required this.char, required this.brand, required this.onTap});
}
