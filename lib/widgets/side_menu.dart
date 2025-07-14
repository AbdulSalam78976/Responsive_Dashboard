import 'package:flutter/material.dart';
import 'package:responsive_dashboard/const/cosntants.dart';
import 'package:responsive_dashboard/data/side_menu_data.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final data = SideMenuData().sideMenuItems;

    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 100),
      color: backgroundColor,
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final item = data[index];
          final isSelected = selectedIndex == index;

          return Container(
            margin: const EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: isSelected ? primaryColor : Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              splashColor: Colors.white24,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 13,
                      vertical: 7,
                    ),
                    child: Icon(
                      item.icon,
                      color: isSelected ? Colors.white : Colors.grey,
                    ),
                  ),
                  Text(
                    item.title,
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.grey,
                      fontSize: 16,
                      fontWeight: isSelected
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
