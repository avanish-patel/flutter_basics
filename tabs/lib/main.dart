import 'package:flutter/material.dart';
import './firsttab.dart' as firstTab;
import './secondtab.dart' as secondTab;

void main() => runApp(Home());

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Tabs App")),
          backgroundColor: Colors.teal,
          bottom: TabBar(
            controller: tabController,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.add_shopping_cart),
              ),
              Tab(
                icon: Icon(Icons.account_balance_wallet),
              )
            ],
          ),
        ),
        body: TabBarView(
            controller: tabController,
            children: <Widget>[firstTab.FirstTab(), secondTab.SecondTab()]),
      ),
    );
  }
}
