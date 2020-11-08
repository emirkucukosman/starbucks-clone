import 'package:flutter/material.dart';
import 'package:starbucks_clone/widgets/inbox_container/inbox_container.dart';

class InboxScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  final List<Widget> tabs = <Widget>[
    Padding(
      padding: EdgeInsets.all(8),
      child: Text("Inbox", style: TextStyle(fontSize: 11),),
    ),
    Padding(
      padding: EdgeInsets.all(8),
      child: Text("Offers", style: TextStyle(fontSize: 11),),
    ),
    Padding(
      padding: EdgeInsets.all(8),
      child: Text("Past Offers", style: TextStyle(fontSize: 11),),
    ),
  ];
  final List<Widget> pages = <Widget>[
    inboxContainer(),
    Center(child: Text("Offers"),),
    Center(child: Text("Past Offers"),),
  ];

  TabController _tabController;

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
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
        title: Text("Messages", style: Theme.of(context).textTheme.headline4,),
        bottom: TabBar(
          controller: _tabController,
          tabs: tabs,
          onTap: _onItemTapped,
        ),
        centerTitle: true,
      ),
      body: pages.elementAt(_selectedIndex),
    );
  }
}