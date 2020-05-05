import 'package:flutter/material.dart';
import 'package:reddit_frontpage_clone_flutter/screen/home_tabs/home.dart';
import 'package:reddit_frontpage_clone_flutter/screen/home_tabs/popular.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(initialIndex: 0, length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reddit'),
        bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.black,
            tabs: [
              Tab(
                text: 'Home',
              ),
              Tab(
                text: 'Popular',
              )
            ]),
      ),
      drawer: Drawer(), //NavigationDrawer
      body: Container(
        child: TabBarView(
          controller: _tabController,
          children: [
            Home(),
            Popular(),
          ],
        ),
      ),
    );
  }
}
