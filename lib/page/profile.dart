import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Profile App',
//       home: Profile(),
//     );
//   }
// }

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 216, 201),
      appBar: AppBar(
        title: Text('Coffee Shop'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/bgcoffeee.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              'FATHIN ZHAFIRA FAUZI',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'NIM: 21120121120024',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'A coffee shop is not just a place to enjoy a cup of coffee, but also a space where the aromatic scent of coffee meets warm conversations, and creative ideas blend with the cozy ambiance.Its a haven that delights the palate and embraces the soul, where each sip brings a new story, and every corner holds the rhythm of your coffee-infused day.The comfortable atmosphere and creative design make the coffee shop an ideal place to meet friends, read a book, or even work. Coffee is not just a beverage, it is also a catalyst for sharing moments and creating unforgettable memories.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
