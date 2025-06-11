import 'package:dashboard_project_new/screens/assignment_dashboard.dart';
import 'package:dashboard_project_new/screens/dashboard_screen.dart';
import 'package:dashboard_project_new/screens/notification_screen.dart';
import 'package:dashboard_project_new/screens/profile_screen.dart';
import 'package:dashboard_project_new/screens/wallet_history_screen.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetNavOptions = <Widget>[
                      const DashboardScreen(),
                      const AssignmentDashboard(),
                      const WalletHistoryScreen(),
                      const NotificationScreen(),
                      const ProfileScreen(),
  ];
  void _onNavIconTapped(int index){
            setState(() {
              _selectedIndex = index;
            });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1a1a1a),
      body: Center(child: _widgetNavOptions[_selectedIndex],), 
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          ),
          boxShadow: [
            BoxShadow(
              // ignore: deprecated_member_use
              color: Colors.black.withOpacity(0.5),
              blurRadius: 0.1,
              spreadRadius: 0.1,
            )
          ]
          // boxShadow: BoxShadow(),
        ),
        child: BottomNavigationBar(
           items: [
                BottomNavigationBarItem(icon: Icon(FluentIcons.home_24_regular),activeIcon: Icon(FluentIcons.home_24_filled),label: "Home"),
                 BottomNavigationBarItem(icon: Icon(FluentIcons.home_24_regular),activeIcon: Icon(FluentIcons.home_24_filled),label: "Home"),
                BottomNavigationBarItem(
                icon: Icon(FluentIcons.wallet_24_regular), // Regular wallet icon
                activeIcon: Icon(FluentIcons.wallet_24_filled), // Filled wallet icon for active state
                label: 'Wallet',),
                BottomNavigationBarItem(
                icon: Icon(FluentIcons.alert_24_regular),
                activeIcon: Icon(FluentIcons.alert_24_filled),
                label: "Alerts",
                                      ),
                BottomNavigationBarItem(
                  icon: Icon(FluentIcons.person_info_24_regular),
                  activeIcon: Icon(FluentIcons.person_info_24_filled),
                  label: "Profile",
                ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onNavIconTapped,
          type: BottomNavigationBarType.fixed,
          elevation: 10,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: Color(0xFFfb7b38),
          unselectedItemColor: Color(0xFFeaeaea),
          backgroundColor: Colors.transparent
          ),
      ),
    );
  }
}