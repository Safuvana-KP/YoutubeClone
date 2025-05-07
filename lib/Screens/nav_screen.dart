import 'package:flutter/material.dart';
import 'package:untitled1/Screens/settings_screen.dart';
import 'package:untitled1/Screens/subscriptionscreen.dart';

import 'Shorts.dart';
import 'addscreen.dart';
import 'home_screen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int selectedIndex=0;

  final screens=[
    HomeScreen(),
    const Shorts(),
    AddScreen(),
    SubscriptionScreen(),
    const SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10.0,
        unselectedFontSize: 10.0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        currentIndex: selectedIndex,
          onTap: (i)=>setState(() {
            selectedIndex=i;
          }),
          items:const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined,color: Colors.black,),
            activeIcon: Icon(Icons.home,color: Colors.black),
            label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined,color: Colors.black),
              activeIcon: Icon(Icons.video_collection,color: Colors.black),
              label: 'Shorts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline,color: Colors.black),
              activeIcon: Icon(Icons.add_circle,color: Colors.black),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions_outlined,color: Colors.black),
              activeIcon: Icon(Icons.subscriptions,color: Colors.black),
              label: 'Subscriptions',
            ),
            BottomNavigationBarItem(
              icon:CircleAvatar(
                radius: 15,
                foregroundImage: NetworkImage('https://tse3.mm.bing.net/th?id=OIP.aDIL4mBD-YQJWl6kzH0uBgHaHa&pid=Api&P=0&h=220'),
              ),
              activeIcon:CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.black,
                foregroundImage: NetworkImage(
                    'https://tse3.mm.bing.net/th?id=OIP.aDIL4mBD-YQJWl6kzH0uBgHaHa&pid=Api&P=0&h=220',),
              ),
              label: 'You',
            ),

          ]
      ),
    );
  }
}

