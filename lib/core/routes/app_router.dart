import 'package:flame_basic/presentations/screens/flame_basic/canvas_circle/canvas_circle.dart';
import 'package:flame_basic/presentations/screens/flame_basic/canvas_rectangulo/canvas_rectangulo.dart';
import 'package:flame_basic/presentations/screens/flame_basic/flame_sprite/simple_sprite_flame.dart';
import 'package:flame_basic/presentations/screens/home/home_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/sprite',
    builder: (context, state) => const MyGameSprite(),
  ),
  GoRoute(
    path: '/circle',
    builder: (context, state) => const MyGameCircle(),
  ),
  GoRoute(
    path: '/rectangule',
    builder: (context, state) => const MyGameReactangulo(),
  ),
]);
