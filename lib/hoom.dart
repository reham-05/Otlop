import 'package:flutter/material.dart';
import 'package:otlop/head.dart';

import 'bottombar.dart';
import 'brand.dart';
import 'category.dart';
import 'item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

int select = 0;
List<Item> item = [
  Item(
    head: "Starbucks",
    dis: "Double Caramel\nFrappuccino",
    name: "Frappuccino",
    price: 200,
    image: "assets/images/coffee.jpg",
  ),
  Item(
    head: "Starbucks",
    dis: "Blueberry\nCheesecake",
    name: "Cake",
    price: 300,
    image: "assets/images/cake.jpg",
  ),
  Item(
    head: "Starbucks",
    dis: "Double Caramel\nFrappuccino",
    name: "Frappuccino",
    price: 200,
    image: "assets/images/coffee.jpg",
  ),
  Item(
    head: "Starbucks",
    dis: "Blueberry\nCheesecake",
    name: "Cake",
    price: 300,
    image: "assets/images/cake.jpg",
  ),
  Item(
    head: "COSTA",
    dis: "Vanilla Latte\n  ",
    name: "Costa",
    price: 400,
    image: "assets/images/vanilla.jpg",
  ),
  Item(
    head: "COSTA",
    dis: "Dark Chocolate\nMocha",
    name: "Costa",
    price: 250,
    image: "assets/images/dark.jpg",
  ),
  Item(
    head: "COSTA",
    dis: "Vanilla Latte\n   ",
    name: "Costa",
    price: 200,
    image: "assets/images/vanilla.jpg",
  ),
  Item(
    head: "COSTA",
    dis: "Dark Chocolate\nMocha",
    name: "Costa",
    price: 300,
    image: "assets/images/dark.jpg",
  ),
];
List<cat> category = [
  cat(pic: "assets/images/soda.png", category: "Frappuccino", onPressed: () {}),
  cat(pic: "assets/images/coffee.png", category: "Latte", onPressed: () {}),
  cat(pic: "assets/images/choclet.png", category: "Mocha", onPressed: () {}),
  cat(pic: "assets/images/coffee.png", category: "Macchiato", onPressed: () {}),
  cat(pic: "assets/images/soda.png", category: "Frappuccino", onPressed: () {}),
  cat(pic: "assets/images/coffee.png", category: "Latte", onPressed: () {}),
  cat(pic: "assets/images/choclet.png", category: "Mocha", onPressed: () {}),
  cat(pic: "assets/images/coffee.png", category: "Macchiato", onPressed: () {}),
];
List<Brand> brand = [
  Brand(brand: "Starbucks"),
  Brand(brand: "Costa"),
  Brand(brand: "Cilantro"),
  Brand(brand: "Starbucks"),
  Brand(brand: "Costa"),
  Brand(brand: "Cilantro"),
];
int currentpage = 0;
final PageController controller = PageController();

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomBar(select: 0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Head(),
              Expanded(
                child: ListView(
                  children: [
                    SizedBox(height: 20),
                    SizedBox(
                      height: 200,
                      child: PageView(
                        controller: controller,
                        onPageChanged: (index) {
                          setState(() {
                            currentpage = index;
                          });
                        },
                        children: [
                          CustomOffer(index: 0),
                          CustomOffer(index: 1),
                          CustomOffer(index: 2),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "Categories",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "See all",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffFF6B4A),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: category.length,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            width: 100,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: CustomProduct(
                                pic: category[index].pic,
                                category: category[index].category,
                                onPressed: () {},
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Brands",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 50,
                      child: ListView.builder(
                        itemCount: brand.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CustomBrand(brand: brand[index].brand);
                        },
                      ),
                    ),

                    SizedBox(height: 20),
                    Text(
                      "Popular right now",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff111827),
                      ),
                    ),
                    SizedBox(height: 20),
                    GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            childAspectRatio: .75,
                          ),
                      itemCount: item.length,
                      itemBuilder: (context, index) {
                        return CustomItem(
                          image: item[index].image,
                          head: item[index].head,
                          dis: item[index].dis,
                          name: item[index].name,
                          price: item[index].price,
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

class CustomOffer extends StatelessWidget {
  final int index;

  const new({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsetsGeometry.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffFF6B4A), Color(0xffFF8C73)],
                stops: [.6, 1],
              ),
              borderRadius: BorderRadius.circular(24),
            ),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsetsDirectional.symmetric(
                    horizontal: 12,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0x33FFFFFF),
                    borderRadius: BorderRadius.circular(9999),
                  ),
                  child: Text(
                    "Limited offer",
                    style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Free delivery on\nyour first order",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Use code BITE10 at checkout",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: Row(
              children: List.generate(3, (index) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: 5,
                  width: currentpage == index ? 20 : 7,
                  margin: EdgeInsetsDirectional.symmetric(horizontal: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
