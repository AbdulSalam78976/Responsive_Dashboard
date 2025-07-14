import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/sidemenu_model.dart';

class SideMenuData {
  List<SidemenuModel> sideMenuItems = [
    SidemenuModel(title: "Dashboard", icon: Icons.dashboard_outlined),
    SidemenuModel(title: "Profile", icon: Icons.person_outlined),
    SidemenuModel(title: "History", icon: Icons.history_outlined),
    SidemenuModel(title: "Settings", icon: Icons.settings_outlined),
    SidemenuModel(title: "Logout", icon: Icons.logout_outlined),
  ];
}
