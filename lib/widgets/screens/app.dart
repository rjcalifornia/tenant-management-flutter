import 'package:flutter/material.dart';
import 'package:home_management_app/bloc/login_bloc.dart';
import 'package:home_management_app/widgets/screens/home.dart';
import 'package:home_management_app/widgets/screens/notifications.dart';
import 'package:home_management_app/widgets/screens/profile.dart';

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xfff5f6f5),
          body: _screens.elementAt(_currentIndex),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: _onItemTapped,
            //  type: BottomNavigationBarType.shifting,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Propiedades',
                backgroundColor: Color(0xff071d40),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Notificaciones',
                backgroundColor: Colors.green,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Perfil',
                backgroundColor: Colors.pink,
              ),
            ],
            selectedItemColor: const Color(0xffff385c),
          )),
    );
  }
}
