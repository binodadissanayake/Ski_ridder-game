import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  // Static ID property for the Flame RouterComponent
  static const String id = 'MainMenu'; 

  // Define two distinct callbacks for the two buttons
  final VoidCallback? onPlayPressed;
  final VoidCallback? onSettingPressed;

  // Constructor initializes the fields with the same names
  const MainMenu({
    super.key, 
    this.onPlayPressed, 
    this.onSettingPressed, required void Function() onSettingsPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Game Title
            const Text(
              'Ski Master',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 30), 

            // Play Button
            SizedBox(
              width: 150,
              child: OutlinedButton(
                onPressed: onPlayPressed, // Use the correct callback
                child: const Text('Play'),
              ),
            ),
            const SizedBox(height: 5),

            // Settings Button
            SizedBox(
              width: 150,
              child: OutlinedButton(
                onPressed: onSettingPressed, // Use the correct callback
                child: const Text('Settings'),
                // child: const Text('Settings'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}