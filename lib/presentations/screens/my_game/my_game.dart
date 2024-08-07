import 'package:flame/game.dart';
import 'package:flame_basic/presentations/screens/flame_basic/flame_sprite/simple_sprite_flame.dart';
import 'package:flutter/cupertino.dart';

class MyGame extends FlameGame {
  @override
  Future<void>? onLoad() async {
    await add(SimpleSpriteFlame());
    return super.onLoad();
  }
}


class MyGameWidget extends StatelessWidget {
  const MyGameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GameWidget(game: MyGame());
  }

}
