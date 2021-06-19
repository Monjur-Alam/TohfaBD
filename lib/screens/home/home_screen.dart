import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/components/app_bar.dart';
import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/enums.dart';
import 'package:shop_app/models/drawer_menu.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/category_product/category_product.dart';
import 'package:shop_app/screens/home/components/set_icon.dart';

import 'components/body.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";
  static const HOME = 0;
  static const FATHERSDAY = 1;
  static const CORONAPROVENSION = 2;
  static const CAKES = 3;
  static const CHOKOLATES = 4;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<DrawerMenu> drawerItems = DrawerMenu.getDrawerMenu();
  int _selectedDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    final themeMenu = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // ignore: deprecated_member_use
            GestureDetector(
              child: Builder(builder: (context) {
                return GestureDetector(
                  child: SetIcon(icon: Icons.menu, color: kPrimaryColor),
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              }),
            ),
            SvgPicture.asset('assets/images/logo.svg'),
            // ignore: deprecated_member_use
            GestureDetector(
              child: SetIcon(icon: Icons.shopping_cart, color: kPrimaryColor),
              onTap: () {
                Navigator.pushNamed(context, CartScreen.routeName);
              },
            )
          ],
        ),
      ),
      body: _getDrawerFragment(_selectedDrawerIndex),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 50,
                    // backgroundImage: AssetImage('assets/images/avatar.png'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('John Doe'),
                  SizedBox(
                    height: 10,
                  ),
                  Text('JohnDoe@gmail.com')
                ],
              ),
            ),
            ListView.builder(
                itemCount: drawerItems.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return _drawerMenuItem(index, drawerItems[index], themeMenu);
                }),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }

  Widget _getDrawerFragment(int pos) {
    switch (pos) {
      case HomeScreen.HOME:
        return Body();
      case HomeScreen.FATHERSDAY:
        return CategoryProduct();
      case HomeScreen.CORONAPROVENSION:
        return CategoryProduct();
      case HomeScreen.CAKES:
        return CategoryProduct();
      case HomeScreen.CHOKOLATES:
        return CategoryProduct();
      default:
        return Text("Error");
    }
  }

  void _onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    Navigator.of(context).pop();
  }

  Widget _buildHeaderContent(DrawerMenu d, int index) {
    return ListTile(
      leading: Icon(d.icon),
      title: Text(
        d.title,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
      selected: index == _selectedDrawerIndex,
      onTap: () => _onSelectItem(index),
    );
  }

  Widget _buildExpandableContent(DrawerMenu d, int index) {
    return ListTile(
      title: Text(
        'Sub Menu ${d.title}',
        style: TextStyle(color: Colors.black45),
      ),
      selected: index == _selectedDrawerIndex,
      onTap: () => _onSelectItem(index),
    );
  }

  Widget _drawerMenuItem(int index, DrawerMenu d, ThemeData menuTheme) {
    return Theme(
      data: menuTheme,
      child: ExpansionPanelList(
        animationDuration: Duration(milliseconds: 50),
        children: [
          ExpansionPanel(
              headerBuilder: (context, isExpand) =>
                  _buildHeaderContent(d, index),
              body: _buildExpandableContent(d, index),
              isExpanded: d.isExpanded)
        ],
        expansionCallback: (_, isExpanded) =>
            _actionExpanded(index, isExpanded),
      ),
    );
  }

  void _actionExpanded(int index, isExpand) {
    if (!isExpand) {
      setState(() {
        drawerItems.asMap().forEach((key, value) {
          value.isExpanded = key == index;
        });
      });
    } else {
      setState(() => drawerItems[index].isExpanded = false);
    }
  }
}
