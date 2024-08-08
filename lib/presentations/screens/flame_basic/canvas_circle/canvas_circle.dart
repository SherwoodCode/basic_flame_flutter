import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CanvasCircle extends PositionComponent {
  CanvasCircle() : super();
  double ciclePosXY = 10;

  @override
  void render(Canvas canvas) {
    canvas.drawCircle(
        Offset(ciclePosXY, ciclePosXY), 60.0, BasicPalette.blue.paint());
    super.render(canvas);
  }

  @override
  void update(double dt) {
    ciclePosXY++;
  }
}

class MyGame extends Game {
  late CanvasCircle canvasCircle;

  MyGame() {
    canvasCircle = CanvasCircle();
  }

  @override
  void render(Canvas canvas) {
    canvasCircle.render(canvas);
  }

  @override
  void update(double dt) {
    canvasCircle.update(dt);
  }
}

class MyGameCircle extends StatelessWidget {
  const MyGameCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GameWidget(game: MyGame()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
