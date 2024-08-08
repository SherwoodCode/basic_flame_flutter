import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CanvasCircle extends PositionComponent {
  CanvasCircle() : super();

  @override
  void render(Canvas canvas) {
    canvas.drawCircle(const Offset(100, 100), 60.0, BasicPalette.blue.paint());
    super.render(canvas);
  }
}

class MyGame extends FlameGame {
  @override
  Future<void>? onLoad() async {
    await add(CanvasCircle());
    return super.onLoad();
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
