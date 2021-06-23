import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
import 'package:shop_app/components/drawer.dart';
import 'package:shop_app/components/news_grid.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/enums.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/home/components/TopPromoSlider.dart';
import 'package:shop_app/screens/home/components/search_product.dart';
import 'package:shop_app/screens/home/components/set_icon.dart';
import 'package:shop_app/screens/sign_in/components/body.dart';
import 'package:shop_app/viewmodels/news_article_list_view_model.dart';

import 'components/body.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();
    Provider.of<NewsArticleListViewModel>(context, listen: false)
        .topHeadlines();
  }

  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<NewsArticleListViewModel>(context);
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
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => CartScreen(),
                  ),
                );
              },
            )
          ],
        ),
      ),
      body: HomeBody(viewModel: viewModel),
      drawer: JWFDDrawer(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
