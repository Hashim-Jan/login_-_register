import 'package:auth/screens/login_screen.dart';
import 'package:auth/screens/register_screen.dart';
import 'package:flutter/material.dart';
class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 40,),
              ///
              /// give the tab bar a height [can change height to preferred height]
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(25.0,),
                ),
                child: TabBar(
                  controller: _tabController,
                  ///
                  /// give the indicator a decoration (color and border radius)
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0,),
                    color: Colors.green,
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    ///
                    /// first tab [you can add an icon using the icon property]
                    Tab(text: 'Register',),

                    ///
                    /// second tab [you can add an icon using the icon property]
                    Tab(
                      text: 'Log In',
                    ),
                  ],
                ),
              ),
              ///
              /// tab bar view here
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ///
                    /// first tab bar view widget
                    RegisterScreen(),
                    ///
                    /// second tab bar view widget
                    LoginScreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}