import 'package:flutter/material.dart';
import 'package:metro_lagos/screens/login_page.dart';
import 'package:metro_lagos/screens/shared_widgets/custom_textfield.dart';
import 'package:metro_lagos/screens/verification_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    navigateToVerificationPage(BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const VerificationPage()),
      );
    }

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32.0),
            const Text(
              "Let's Get You Started",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              "Please fill in your information",
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            const SizedBox(height: 32.0),
            TextFormField(
              decoration: const InputDecoration(labelText: 'First Name'),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Last Name'),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Phone Number'),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 16.0),
            const CustomTextField(
              title: "Password",
              hintText: "*********",
              isPasswordField: true,
            ),
            const SizedBox(height: 16.0),
            const CustomTextField(
              title: "Confirm Password",
              hintText: "*************",
              isPasswordField: true,
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: navigateToVerificationPage(context),
              // Perform sign up logic here

              child: const Text('Start'),
            ),
            const SizedBox(height: 16.0),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ));
                },
                child: const Text('Already have an account Login')),
          ],
        ),
      ),
    );
  }
}
