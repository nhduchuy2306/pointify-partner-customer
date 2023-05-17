import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:pointify_partner_customer/core/constants/color_constant.dart';
import 'package:pointify_partner_customer/representation/screens/discount_screen.dart';
import 'package:pointify_partner_customer/representation/screens/history_screen.dart';
import 'package:pointify_partner_customer/representation/screens/home_screen_item.dart';
import 'package:pointify_partner_customer/representation/screens/notification_screen.dart';
import 'package:pointify_partner_customer/representation/screens/profile_screen.dart';
import 'package:pointify_partner_customer/representation/screens/qr_scan_screen.dart';
import 'package:pointify_partner_customer/representation/widgets/drawer_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static String routeName = "/home_screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      HomeScreenItem(),
      HistoryScreen(),
      Page3(),
      DiscountScreen(),
      ProfileScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(FontAwesomeIcons.house, size: 20),
        title: ("Home"),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(FontAwesomeIcons.solidClock, size: 20),
        title: ("History"),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.qr_code,
          color: Colors.white,
        ),
        title: ("QR Code"),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
        onPressed: (q0) {
          Navigator.push(
              context,
              PageTransition(
                type: PageTransitionType.bottomToTop,
                child: QRScanScreen(),
              ));
        },
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.percent_sharp, size: 20),
        title: ("Discount"),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(FontAwesomeIcons.solidUser, size: 20),
        title: ("Profile"),
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette.buttonColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: NotificationScreen(),
                    ));
              },
              child: Icon(FontAwesomeIcons.bell),
            ),
          ],
        ),
      ),
      drawer: DrawerWidget(),
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset: true,
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows: true, // Default is true.
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle:
            NavBarStyle.style15, // Choose the nav bar style with this property.
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
