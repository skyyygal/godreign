import 'package:flutter/material.dart';
import 'package:godreign/views/home_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // The number of tabs you have
      child: Scaffold(
        body: const TabBarView(
          children: [
            HomeScreen(),
            Center(child: Text('Event Tab')),
            Center(child: Text('GR TV Tab')),
            Center(child: Text('Shop Tab')),
            Center(child: Text('Profile Tab')),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
            // borderRadius: BorderRadius.only(
            //   topLeft: Radius.circular(25),
            //   topRight: Radius.circular(25),
            // ),
          ),
          child: const TabBar(
            labelStyle: TextStyle(
              fontSize: 0,
            ),
            labelColor: Colors.white,
            unselectedLabelStyle: TextStyle(
              fontSize: 11,
            ),
            tabs: [
              Tab(
                icon: Icon(Icons.home_outlined),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.event_available),
                text: 'Event',
              ),
              Tab(
                icon: Icon(Icons.play_circle_outlined),
                text: 'GR TV',
              ),
              Tab(
                icon: Icon(Icons.shopping_bag_outlined),
                text: 'Shop',
              ),
              Tab(
                icon: Icon(Icons.account_circle_outlined),
                text: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
