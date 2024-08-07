import 'package:flame/components.dart';

class SimpleSpriteFlame extends SpriteComponent {
  SimpleSpriteFlame() : super(size: Vector2.all(250));

  @override
  Future<void> onLoad() async{
    sprite = await Sprite.load('Female.png');
    return super.onLoad();
  }
}
