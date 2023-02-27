import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_complete_guide/screens/catagories_screen.dart';
import 'package:flutter_complete_guide/screens/fav_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meals'),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.category),
              text: 'Categories',
            ),
            Tab(
              icon: Icon(Icons.star),
              text: 'Favourites',
            )
          ]),
        ),
        body: TabBarView(
          children: [
            CatagoriesScrenn(),
            FavScreen(),
          ],
        ),
      ),
    );
  }
}
