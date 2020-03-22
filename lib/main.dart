import 'package:flutter/material.dart';
import 'package:login_page/login.dart';
import 'package:login_page/register.dart';
import 'package:login_page/themes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Form',
      home: MyPage(),
      theme: ThemeData(
        backgroundColor: secondaryColor,
        scaffoldBackgroundColor: secondaryColor,
        cursorColor: primaryColor,
        accentColor: primaryColor,
        appBarTheme: AppBarTheme(
          color: secondaryColor,
          brightness: Brightness.light,
          textTheme: TextTheme(
            title: TextStyle(
              color: primaryTextColor,
              fontSize: 22.0,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this, initialIndex: 1);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In Form',),
        centerTitle: true,
        bottom: TabBar(
          tabs: [
            Tab(text: 'Login'),
            Tab(text: 'Register'),
          ], //myTabs,
          controller: _tabController,
          indicatorColor: primaryColor,
          labelColor: primaryColor,
          unselectedLabelColor: Colors.grey,
          labelStyle: setTextStyle(size: 20.0, weight: FontWeight.w800),
        ),
      ),
      body: TabBarView(
        children: [
          Login(),
          Register(),
        ],
        controller: _tabController,
      ),
    );
  }
}
