import 'package:company_flutter/resources/color_manager.dart';
import 'package:company_flutter/widgets/custom_appBar.dart';
import 'package:company_flutter/widgets/custom_article_page.dart';
import 'package:flutter/material.dart';

class ArticlrPage extends StatelessWidget {
  const ArticlrPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        image: 'assets/s.png',
        icon: Icons.message,
        title: 'CREAM CHEESE FRENCH',
        colorTitle: ColorManager.black,
        colorIcon: ColorManager.error,
      ),
      body: const Padding(padding: EdgeInsets.all(16), child: CustomArticlePage()),
    );
  }
}
