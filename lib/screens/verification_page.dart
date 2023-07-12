import 'package:flutter/material.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200.0,
              width: 200.0,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.blue,
              ),
              child: Image.asset('assets/images/verification_image.png'),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'OTP Verification',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
           const  SizedBox(height: 16.0),
           const  Text(
              "You'll receive a one-time password to verify this number.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
           const  SizedBox(height: 32.0),
          const  Text(
              'Enter Mobile Number',
              style: TextStyle(fontSize: 16.0),
            ),
           const SizedBox(height: 16.0),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                labelText: 'Mobile Number',
              ),
            ),
          const  SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Perform verification logic here
              },
              child: const Text('Verify'),
            ),
          ],
        ),
      ),
    );
  }
}
