import 'package:flame_basic/core/menu/menu.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];
        return Column(
          children: [_CustomListTitle(menuItem: menuItem)],
        );
      },
    );
  }
}

class _CustomListTitle extends StatelessWidget {
  const _CustomListTitle({
    required this.menuItem,
  });

  final MenuItems menuItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(menuItem.icon, color: Colors.blue),
      trailing: const Icon(
        Icons.arrow_forward,
        color: Colors.blue,
      ),
      title: Text(
        menuItem.title,
      ),
      subtitle: Text(menuItem.subTitulo),
      onTap: () {
        context.push(menuItem.link);
      },
    );
  }
}
