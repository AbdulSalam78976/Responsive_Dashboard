import 'package:flutter/material.dart';
import 'package:responsive_dashboard/const/cosntants.dart';
import 'package:responsive_dashboard/utils/responsive.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    final isMobile = Responsive.isMobile(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        !isDesktop
            ? Padding(
                padding: const EdgeInsets.all(4.0),
                child: IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(
                    Icons.menu,
                    size: Responsive.isMobile(context) ? 30 : 40,
                    color: Colors.grey,
                  ),
                ),
              )
            : Container(),
        if (!isMobile)
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: cardBackgroundColor,
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 20,
                ),
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: const TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(color: Theme.of(context).primaryColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(color: Theme.of(context).primaryColor),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 5),
              ),
            ),
          ),
        if (isMobile)
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(4.0),
                child: IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.grey,
                  iconSize: 30,
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: IconButton(
                  icon: Icon(Icons.person_2_outlined),
                  color: Colors.grey,
                  iconSize: 30,
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                ),
              ),
            ],
          ),
      ],
    );
  }
}
