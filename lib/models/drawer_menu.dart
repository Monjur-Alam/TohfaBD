import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DrawerMenu {
  String title;
  IconData icon;
  bool isExpanded;
  DrawerMenu({this.title, this.icon, this.isExpanded = false});

  static List<DrawerMenu> getDrawerMenu() {
    List<DrawerMenu> drawerItems = [
      DrawerMenu(title: "Home", icon: Icons.home),
      DrawerMenu(title: "Father's Day", icon: Icons.person_pin_outlined),
      DrawerMenu(title: "Corona Prevention", icon: Icons.sanitizer),
      DrawerMenu(title: "Cakes", icon: Icons.cake_outlined),
      DrawerMenu(title: "Chokolates", icon: Icons.fastfood_sharp),
      DrawerMenu(title: "Electronics", icon: Icons.fastfood_sharp),
      DrawerMenu(title: "Food", icon: Icons.fastfood_sharp),
      DrawerMenu(title: "Fruits", icon: Icons.fastfood_sharp),
      DrawerMenu(title: "Flowers", icon: Icons.fastfood_sharp),
      DrawerMenu(title: "Frozen Foods", icon: Icons.food_bank_outlined),
      DrawerMenu(title: "Others", icon: Icons.view_list),
    ];
    return drawerItems;
  }
}