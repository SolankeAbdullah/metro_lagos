import 'package:flutter/material.dart';
import 'package:metro_lagos/screens/onboarding_screen1.dart';
import '../provider/navigation_provider.dart';
import '../provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);
    navigationProvider.setLoading(true);

    Future.delayed(const Duration(seconds: 3), () {
      navigationProvider.setLoading(false);
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const OnboardingScreen()));
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'METRO LAGOS',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            if (navigationProvider.isLoading) const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
