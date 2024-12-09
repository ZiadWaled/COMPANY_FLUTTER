import 'package:company_flutter/presentation/main/pages/new_offers/new_offers_body.dart';
import 'package:company_flutter/resources/color_manager.dart';
import 'package:company_flutter/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';

class NewOffersPage extends StatelessWidget {
  const NewOffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        image: 'assets/s.png',
        icon: Icons.message,
        title: 'New Offers',
        colorTitle: ColorManager.primary,
        colorIcon: ColorManager.gray,
      ),
      body: const NewOffersBody(),
    );
  }
}
