import 'package:company_flutter/presentation/main/pages/articale/articlr_page.dart';
import 'package:company_flutter/resources/color_manager.dart';
import 'package:company_flutter/widgets/Container_custom_widget.dart';
import 'package:company_flutter/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';

class CustomWidgetSendOrder extends StatelessWidget {
  final List<Map<String, dynamic>> widgetData = [
    {
      'icon': Icons.touch_app,
      'text': 'UI & UX',
      'color': Colors.blueAccent,
    },
    {
      'icon': Icons.ios_share,
      'text': 'IOS',
      'color': ColorManager.primary,
    },
    {
      'icon': Icons.android,
      'text': 'Android',
      'color': ColorManager.white,
    },
    {
      'icon': Icons.share,
      'text': 'Markiting',
      'color': Colors.blueAccent,
    },
  ];

  CustomWidgetSendOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        image: 'assets/s.png',
        icon: Icons.message,
        title: 'Send Order',
        colorTitle: ColorManager.gray,
        colorIcon: ColorManager.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title and Subtitle
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  'Our Service',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: ColorManager.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eget ante facilisis gravida id ut enim.',
                  style: TextStyle(
                    fontSize: 16,
                    color: ColorManager.black,
                  ),
                ),
              ],
            ),
          ),

          // GridView with custom widgets
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: List.generate(
                  widgetData.length,
                  (index) => ContainerCustomWidget(
                    icon: widgetData[index]['icon'],
                    text: widgetData[index]['text'],
                    color: widgetData[index]['color'],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ArticlrPage(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
