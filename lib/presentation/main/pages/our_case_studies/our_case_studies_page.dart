import 'package:company_flutter/resources/color_manager.dart';
import 'package:company_flutter/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';

class OurCaseStudiesPage extends StatelessWidget {
  OurCaseStudiesPage({super.key});

  final List<String> images = List.generate(
    10,
    (index) => 'assets/3.jpeg',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        image: 'assets/s.png',
        icon: Icons.message,
        title: 'Our Case Studies',
        colorTitle: ColorManager.primary,
        colorIcon: ColorManager.gray,
      ),
      body: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image on the left (responsive and larger)
              Container(
                width: MediaQuery.of(context).size.width /
                    3, // 1/3 of the screen width
                height: 150, // Set a fixed height
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(images[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              // Title and description on the right
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title (Main text)
                    Text(
                      'The first London case', // Make the title unique or dynamic
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: ColorManager
                            .darkGray, // Make the title color more prominent
                      ),
                    ),
                    const SizedBox(height: 5),
                    // Small description (subtitle text)
                    Text(
                      'This is the first short description of the case study', // Make the subtitle dynamic
                      style: TextStyle(
                        fontSize: 14,
                        color: ColorManager.gray,
                      ),
                    ),
                    const SizedBox(height: 10),
                    // "Read More" link
                    TextButton(
                      onPressed: () {
                        // Add your action for the "Read More" button
                      },
                      child: Text(
                        'Read More',
                        style: TextStyle(
                          color: ColorManager.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
