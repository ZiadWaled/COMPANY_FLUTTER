import 'package:company_flutter/presentation/main/pages/about_us/about_us_page.dart';
import 'package:company_flutter/presentation/main/pages/home/home_page.dart';
import 'package:company_flutter/presentation/main/pages/new_offers/new_offers_page.dart';
import 'package:company_flutter/presentation/main/pages/our_case_studies/our_case_studies_page.dart';
import 'package:company_flutter/presentation/main/pages/reservation_form_page/reservation_form_page.dart';
import 'package:company_flutter/presentation/main/pages/send_order/send_order_page.dart';
import 'package:company_flutter/resources/color_manager.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
     HomePage(),
    const NewOffersPage(),
    const SendOrderPage(),
     OurCaseStudiesPage(),
    const ReservationFormPage(),
    const AboutUsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTabTapped,
      backgroundColor: ColorManager.white,
      selectedItemColor: ColorManager.primary,
      unselectedItemColor: ColorManager.grey1,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_offer),
          label: 'Offers',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.send),
          label: 'Send Offer',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Case Studies',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: 'Reservation',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.info), // Corrected the icon
          label: 'About Us',
        ),
      ],
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
