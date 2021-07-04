import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/routes.dart';
import 'package:shop_app/screens/category_product/category_product.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:shop_app/theme.dart';
import 'package:shop_app/viewmodels/product_list_view_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TohfaBD',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      // initialRoute: SplashScreen.routeName,
      routes: routes,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => ProductListViewModel(),
          )
        ],
        child: HomeScreen(),
      ),
    );
  }
}
