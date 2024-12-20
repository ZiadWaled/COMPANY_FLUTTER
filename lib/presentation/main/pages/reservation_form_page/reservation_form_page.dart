import 'package:company_flutter/resources/color_manager.dart';
import 'package:company_flutter/resources/font_manager.dart';
import 'package:company_flutter/resources/styles_manager.dart';
import 'package:company_flutter/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';

class ReservationFormPage extends StatelessWidget {
  const ReservationFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        image: 'assets/s.png',
        icon: Icons.message,
        title: 'Reservation Form',
        colorTitle: ColorManager.primary,
        colorIcon: ColorManager.gray,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              'Enter your company name',
              style: TextStyle(fontSize: 16, color: ColorManager.darkGray),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Company Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // Title TextField
            Text(
              'Enter the title',
              style: TextStyle(fontSize: 16, color: ColorManager.darkGray),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // Phone Number TextField
            Text(
              'Enter your phone number',
              style: TextStyle(fontSize: 16, color: ColorManager.darkGray),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // Project Information TextField
            Text(
              'Enter project information',
              style: TextStyle(fontSize: 16, color: ColorManager.darkGray),
            ),
            const SizedBox(height: 10),
            TextField(
              maxLines: 6,
              decoration: InputDecoration(
                labelText: 'Project Information',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // Submit Button
            ElevatedButton(
              onPressed: () {
                // Add action to submit the form
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Reservation Submitted!')),
                );
              },
              child: Text('Submit Reservation'),
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorManager.primary,
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                textStyle: TextStyle(fontSize: FontSize.s16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
