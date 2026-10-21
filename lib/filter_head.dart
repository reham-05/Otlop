import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FilterHead extends StatefulWidget {
  final String name;
  final void Function() onPressed;

  new({super.key, required this.name, required this.onPressed});

  @override
  State<FilterHead> createState() => _FilterHeadState();
}

class _FilterHeadState extends State<FilterHead> {
  int isSelected = 0;

  late List<Sort> sort = [
    Sort(onPressed: () {}, name: "Relevance", isSelect: false),
    Sort(onPressed: () {}, name: "Price ↑", isSelect: false),
    Sort(onPressed: () {}, name: "Price ↓", isSelect: false),
    Sort(onPressed: () {}, name: "A – Z", isSelect: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              style: IconButton.styleFrom(
                padding: EdgeInsetsGeometry.all(2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: Color(0xffFFFFFF),
              ),
              onPressed: widget.onPressed,
              icon: Padding(
                padding: const EdgeInsets.only(left: 7.0),
                child: Icon(Icons.arrow_back_ios),
              ),
            ),
            SizedBox(width: 20),
            Text(
              widget.name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xff111827),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Color(0xff9CA3AF)),
                  hint: Text(
                    "Search products...",
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
            ),
            Stack(
              children: [
                IconButton(
                  style: IconButton.styleFrom(
                    padding: EdgeInsetsGeometry.all(2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: Color(0xffFFFFFF),
                  ),
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/icons/search.svg"),
                ),
                Positioned(
                  top: 10,
                  right: 8,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Color(0xffFF5C39),
                      borderRadius: BorderRadius.circular(9999),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Wrap(
          spacing: 3,
          runSpacing: 3,
          children: List.generate(sort.length, (index) {
            return CustomSorting(
              onPressed: () {
                setState(() {
                  isSelected = index;
                });
              },
              name: sort[index].name,
              isSelect: isSelected == index,
            );
          }),
        ),
      ],
    );
  }
}

class CustomSorting extends StatelessWidget {
  final void Function() onPressed;
  final String name;
  final bool isSelect;

  const new({
    super.key,
    required this.onPressed,
    required this.name,
    required this.isSelect,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelect ? Color(0xffFF5C39) : Color(0xffFFFFFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9999),
          side: BorderSide(color: Color(0xffF3F4F6)),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        name,
        style: TextStyle(color: isSelect ? Colors.white : Color(0xff4B5563)),
      ),
    );
  }
}

class Sort {
  final void Function() onPressed;
  final String name;
  final bool isSelect;

  new({required this.onPressed, required this.name, required this.isSelect});
}
