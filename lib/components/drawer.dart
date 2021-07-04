import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/screens/category_product/category_product.dart';

import 'package:package_info/package_info.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/viewmodels/product_list_view_model.dart';

class JWFDDrawer extends StatefulWidget {
  @override
  JWFDDrawerState createState() => JWFDDrawerState();
}

class JWFDDrawerState extends State<JWFDDrawer> {
  static PackageInfo _packageInfo;
  static var _isHome = true;
  static final _panels = [
    {
      'title': "Father's Day",
      'isExpanded': false,
      'items': [
        {
          'title': 'Surprise Gift',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => MultiProvider(
            providers: [
              ChangeNotifierProvider(
                create: (_) => ProductListViewModel(),
              )
            ],
            child: CategoryProduct(),
          ),
        },
        {
          'title': 'Gift',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
      ],
    },
    {
      'title': 'Corona Prevention',
      'isExpanded': false,
      'items': [
        {
          'title': 'Horizontal and Vertical Align',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
        {
          'title': 'Horizontal and Vertical Sizing',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
        {
          'title': 'Horizontal and Vertical Packing',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
        {
          'title': 'Container',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
        {
          'title': 'Grid View Extent',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
        {
          'title': 'Grid View Count',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
        {
          'title': 'List View',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
        {
          'title': 'Stack',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
        {
          'title': 'Card',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
        {
          'title': 'Pavlova',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
        {
          'title': 'Lake',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
      ],
    },
    {
      'title': 'Cakes',
      'isExpanded': false,
      'items': [
        {
          'title': 'Favorite Lake',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
        {
          'title': 'Refresh Indicator',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
        {
          'title': 'Silver App Bar',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
      ],
    },
    {
      'title': 'Chokolates',
      'isExpanded': false,
      'items': [],
    },
    {
      'title': 'Electronics',
      'isExpanded': false,
      'items': [
        {
          'title': 'Basic',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
        {
          'title': 'Named Route',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
        {
          'title': 'Send Data',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
        {
          'title': 'Return Data',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
        {
          'title': 'Hero',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
        {
          'title': 'Nested',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
        {
          'title': 'TabBar',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
      ],
    },
    {
      'title': 'Food',
      'isExpanded': false,
      'items': [
        {
          'title': 'Tabbox',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
        {
          'title': 'Counter',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
      ],
    },
    {
      'title': 'Fruits',
      'isExpanded': false,
      'items': [
        {
          'title': 'Tabbox',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
        {
          'title': 'Counter',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
      ],
    },
    {
      'title': 'Flowers',
      'isExpanded': false,
      'items': [
        {
          'title': 'Tabbox',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
        {
          'title': 'Counter',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
      ],
    },
    {
      'title': 'Frozen Foods',
      'isExpanded': false,
      'items': [
        {
          'title': 'Tabbox',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
        {
          'title': 'Counter',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
      ],
    },
    {
      'title': 'Others',
      'isExpanded': false,
      'items': [
        {
          'title': 'Tabbox',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
        {
          'title': 'Counter',
          'isSelected': false,
          'pageBuilder': (BuildContext context) => CategoryProduct(),
        },
      ],
    },
  ];

  @override
  void initState() {
    super.initState();

    PackageInfo.fromPlatform().then((packageInfo) {
      setState(() {
        _packageInfo = packageInfo;
      });
    });
  }

  void _resetPanels() {
    _panels.forEach((panel) {
      panel['isExpanded'] = false;
      (panel['items'] as List).forEach((item) {
        item['isSelected'] = false;
      });
    });
  }

  void _goHome() {
    _isHome = true;

    _resetPanels();

    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
        (route) => false);
  }

  void _onExpand(index, isExpanded) {
    _resetPanels();

    _panels[index]['isExpanded'] = !isExpanded;

    setState(() {});
  }

  void _onSelected(Map<String, Object> panel, Map<String, Object> item) {
    _isHome = false;

    _resetPanels();

    panel['isExpanded'] = true;
    item['isSelected'] = true;

    Navigator.of(context).push(MaterialPageRoute(builder: item['pageBuilder']));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
            child: Center(
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        maxRadius: 40,
                        backgroundImage: AssetImage('assets/images/Profile Image.png'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('John Doe'),
                      Text('JohnDoe@gmail.com')
                    ],
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            onTap: _goHome,
            title: Text(
              'Home',
              style: TextStyle(fontSize: 16),
            ),
            selected: _isHome,
            dense: true,
          ),
          ExpansionPanelList(
            expansionCallback: _onExpand,
            children: _panels
                .asMap()
                .map(
                  (index, panel) => MapEntry(
                    index,
                    ExpansionPanel(
                      headerBuilder: (context, isExpanded) => ListTile(
                        onTap: () => _onExpand(index, panel['isExpanded']),
                        title: Text(
                          panel['title'],
                          style: TextStyle(fontSize: 16),
                        ),
                        selected: isExpanded,
                        dense: true,
                      ),
                      body: Container(
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                          children: (panel['items'] as List)
                              .map((item) => ListTile(
                                    onTap: () => _onSelected(panel, item),
                                    title: Text(item['title']),
                                    selected: item['isSelected'],
                                    dense: true,
                                    enabled: item['pageBuilder'] != null,
                                  ))
                              .toList(),
                        ),
                      ),
                      isExpanded: panel['isExpanded'],
                    ),
                  ),
                )
                .values
                .toList(),
          ),
          if (_packageInfo != null)
            AboutListTile(
              applicationName: _packageInfo.appName,
              applicationLegalese: 'Copyright © Jagger Wang',
              applicationVersion: _packageInfo.version,
            ),
        ],
      ),
    );
  }
}
