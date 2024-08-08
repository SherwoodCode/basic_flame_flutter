import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CanvasRectangulo extends PositionComponent {
  CanvasRectangulo() : super();

  @override
  void render(Canvas canvas) {
    /*canvas.drawRect(Rect.fromCircle(center: const Offset(100, 100), radius: 40.0),
        BasicPalette.cyan.paint());*/
    canvas.drawRect(Rect.fromPoints(const Offset(50, 50), const Offset(160, 160)),
        BasicPalette.darkBlue.paint());
  }
}

class MyGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    await add(CanvasRectangulo());
    return super.onLoad();
  }
}

class MyGameReactangulo extends StatelessWidget {
  const MyGameReactangulo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GameWidget(
        game: MyGame(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
