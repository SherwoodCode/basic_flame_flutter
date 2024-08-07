import 'package:flame_basic/presentations/screens/home/home_screen.dart';
import 'package:flame_basic/presentations/screens/my_game/my_game.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/game',
    builder: (context, state) => const MyGameWidget(),
  ),
]);
