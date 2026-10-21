import 'package:flutter/material.dart';
import 'package:otlop/filter_head.dart';
import 'package:otlop/hoom.dart';

import 'item.dart';

class FilterBroduct extends StatefulWidget {
  const FilterBroduct({super.key});

  @override
  State<FilterBroduct> createState() => _FilterBroductState();
}

class _FilterBroductState extends State<FilterBroduct> {
  final LatteItem = item
      .where(
        (element) => element.dis.toUpperCase().contains("latte".toUpperCase()),
      )
      .toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9FAFB),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.all(8),
          child: Column(
            children: [
              FilterHead(
                name: "Latte",
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 10),
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: LatteItem.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: .75,
                  ),
                  itemBuilder: (context, index) {
                    return CustomItem(
                      image: LatteItem[index].image,
                      head: LatteItem[index].head,
                      dis: LatteItem[index].dis,
                      name: LatteItem[index].name,
                      price: LatteItem[index].price,
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
