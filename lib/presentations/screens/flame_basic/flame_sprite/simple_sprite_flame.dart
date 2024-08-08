import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class SimpleSpriteFlame extends SpriteComponent {
  double sizeimgX = 250, sizeimgY = 250;
  final double minSize = 250;
  final double maxSize = 500;
  double growthRate = 20;
  final MyGame game;

  SimpleSpriteFlame(this.game) : super(size: Vector2.all(250));

  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load('Female.png');
    position = Vector2((game.size.x - sizeimgX) / 2, (game.size.y - sizeimgY) / 2);
    return super.onLoad();
  }

  @override
  void update(double dt) {
    sizeimgX += dt * growthRate;
    sizeimgY += dt * growthRate;

    if (sizeimgX >= maxSize || sizeimgX <= minSize) {
      growthRate = -growthRate;
    }

    size = Vector2(sizeimgX, sizeimgY);
    position = Vector2((game.size.x - sizeimgX) / 2, (game.size.y - sizeimgY) / 2);
    super.update(dt);
  }
}

class MyGame extends FlameGame {
  late SimpleSpriteFlame simpleSpriteFlame;

  MyGame() {
    simpleSpriteFlame = SimpleSpriteFlame(this);
  }

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    add(simpleSpriteFlame);
  }
}

class MyGameSprite extends StatelessWidget {
  const MyGameSprite({super.key});

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
