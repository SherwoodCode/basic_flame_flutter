import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SimpleSpriteFlame extends SpriteComponent {
  SimpleSpriteFlame() : super(size: Vector2.all(250));

  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load('Female.png');
    return super.onLoad();
  }
}

class MyGame extends FlameGame {
  @override
  Future<void>? onLoad() async {
    await add(SimpleSpriteFlame());
    return super.onLoad();
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
