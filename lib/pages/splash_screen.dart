import 'package:crickify/gen/assets.gen.dart';
import 'package:crickify/pages/home_screen.dart';
import 'package:crickify/pages/utils.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _initializePreferencesAndNavigate();
  }

  Future<void> _initializePreferencesAndNavigate() async {
    final prefs = await SharedPreferences.getInstance();

    // Ensure default values for music and sound are set
    if (!prefs.containsKey('music')) {
      await prefs.setBool('music', false);
    }
    if (!prefs.containsKey('sound')) {
      await prefs.setBool('sound', false);
    }

    // Wait for 1 second, then navigate
    Future.delayed(const Duration(milliseconds: 1000), _navigateToNextScreen);
  }

  void _navigateToNextScreen() {
    Navigator.pushReplacement<void, void>(
      context,
      MaterialPageRoute<void>(
        builder: (context) => const HomeScreen(), // Replace with your HomeScreen
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Linear gradient background
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff6D6E79),
              Color(0xFF343440),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),

              Stack(
                alignment: Alignment.center,
                children: [
                  Assets.images.logo.image(scale: 0.5)
                ],
              ),
              // Loading Text
              const Spacer(),
              Text(
                'Loading',
                style: Utils.textStyle(fontFamily: 'Revalia')
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}

