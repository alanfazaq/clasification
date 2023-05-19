import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nav_bar_widget/page/home_page.dart';
import 'package:nav_bar_widget/page/list_page.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:lottie/lottie.dart';
import 'package:nav_bar_widget/page/predict_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Color mainColor = const Color(0xFF2631C1);
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Nutrifruit",
          textAlign: TextAlign.center,
        ),
        elevation: 0,
        backgroundColor: mainColor,
      ),
      body: PersistentTabView(
        context,
        controller: _controller,
        navBarHeight: 100,
        screens: const [
          HomePage(),
          SearchPage(),
          PredictPage(),
          NotificationPage(),
          ProfilePage(),
        ],
        items: _navBarsItems(),
        navBarStyle: NavBarStyle.style1,
        // navBarStyle: NavBarStyle.style9,
        // navBarStyle: NavBarStyle.style7,
        // navBarStyle: NavBarStyle.style10,
        // navBarStyle: NavBarStyle.style12,
        // navBarStyle: NavBarStyle.style13,
        // navBarStyle: NavBarStyle.style3,
        // navBarStyle: NavBarStyle.style6,
      ),
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.search),
        title: ("Search"),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.camera_circle_fill),
        title: ("Predict"),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.bell),
        title: ("Notification"),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.person),
        title: ("Profile"),
        activeColorPrimary: mainColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }
}

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset('assets/notification.json'),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset('assets/profile.json'),
    );
  }
}
