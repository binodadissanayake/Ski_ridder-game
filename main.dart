import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:ski_runner/game/game.dart';

void main() {
  runApp(const SkiRunnerApp());
}

class SkiRunnerApp extends StatelessWidget {
  const SkiRunnerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GameWidget.controlled(gameFactory: SkiRunnerGame.new),
    );
  }
}