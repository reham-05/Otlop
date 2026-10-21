import 'package:flutter/material.dart';
import 'package:otlop/filter_head.dart';
import 'package:otlop/hoom.dart';
import 'package:otlop/item.dart';

class FilterBrand extends StatefulWidget {
  const FilterBrand({super.key});

  @override
  State<FilterBrand> createState() => _FilterBrandState();
}

class _FilterBrandState extends State<FilterBrand> {
  final costaItems = item
      .where((element) => element.head.toUpperCase() == "costa".toUpperCase())
      .toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9FAFB),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              FilterHead(
                name: "Costa",
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 10),
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: costaItems.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: .75,
                  ),
                  itemBuilder: (context, index) {
                    return CustomItem(
                      image: costaItems[index].image,
                      head: costaItems[index].head,
                      dis: costaItems[index].dis,
                      name: costaItems[index].name,
                      price: costaItems[index].price,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
