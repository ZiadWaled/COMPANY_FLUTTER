import 'package:company_flutter/resources/color_manager.dart';
import 'package:company_flutter/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data for the list
    final List<Map<String, String>> aboutUsItems = [
      {
        'image': 'https://images.unsplash.com/photo-1600585154340-be6161a56a0c',
        'title': 'Our Vision',
        'description':
            'Our vision is to innovate and lead the industry with exceptional services and solutions, ensuring client satisfaction and sustainable growth for the future.',
      },
      {
        'image': 'https://images.unsplash.com/photo-1600585154340-be6161a56a0c',
        'title': 'Our Mission',
        'description':
            'Our mission is to deliver high-quality products and services that empower businesses to thrive, while upholding our values of integrity, excellence, and innovation.',
      },
      {
        'image': 'https://images.unsplash.com/photo-1600585154340-be6161a56a0c',
        'title': 'Our History',
        'description':
            'With decades of experience, our journey reflects a commitment to excellence and a relentless pursuit of innovation, shaping the industry standards.',
      },
    ];

    return Scaffold(
      appBar: CustomAppbar(
        image: 'assets/s.png',
        icon: Icons.message,
        title: 'About Us',
        colorTitle: ColorManager.black,
        colorIcon: ColorManager.error,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: aboutUsItems.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Company Name at the top
                  Text(
                    'Company Name',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: ColorManager.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              );
            } else {
              final item = aboutUsItems[index - 1];
              return Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image
                    Image.network(
                      item['image']!,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    (loadingProgress.expectedTotalBytes ?? 1)
                                : null,
                          ),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) => Center(
                        child: Icon(
                          Icons.broken_image,
                          color: ColorManager.error,
                          size: 50,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Title below the image
                    Text(
                      item['title']!,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: ColorManager.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    // Description below the title
                    Text(
                      item['description']!,
                      style: TextStyle(
                        fontSize: 14,
                        color: ColorManager.grey1,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
