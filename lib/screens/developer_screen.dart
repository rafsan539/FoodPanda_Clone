import 'package:flutter/material.dart';
class DeveloperScreen extends StatelessWidget {
  const DeveloperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Developer Info Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Section
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/rafsan.png'), // Replace with your asset path
                  ),
                  SizedBox(height: 10),
                  Text(
                    'MD.RAFSAN ZANI',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "I am a passionate Flutter developer,user-friendly mobile applications. With a strong foundation in Dart and cross-platform development.Honing my skills in UI/UX design, state management, and API integration.",
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Contact Info Section
            Text(
              'Contact Information',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('rafsanzanirizon539@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('01308078535'),
            ),
            ListTile(
              leading: Icon(Icons.link),
              title: Text('LinkedIn / GitHub / Twitter'),
            ),
            SizedBox(height: 20),

            // Skills/Technologies Section
            Text(
              'Skills/Technologies',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                Chip(label: Text('Flutter')),
                Chip(label: Text('Dart')),
                Chip(label: Text('Figma')),
                Chip(label: Text('Python')),
                // Add more as needed
              ],
            ),
            SizedBox(height: 20),

            // Projects/Experience Section
            Text(
              'Projects/Experience',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ListTile(
              title: Text('Project 1'),
              subtitle: Text('Food Delivery Apps'),
            ),
            ListTile(
              title: Text('Project 2'),
              subtitle: Text('Minimal Reminder Apps'),
            ),
            // Add more projects as needed

            SizedBox(height: 20),

            // Testimonials/Feedback Section
            Text(
              'Testimonials/Feedback',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              '“Great developer, highly recommend!” - Client A',
              style: TextStyle(color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }
}
