import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitulo;
  final String link;
  final IconData icon;

  const MenuItems(
      {required this.title,
      required this.subTitulo,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItems>[
  MenuItems(
      title: 'Sprite',
      subTitulo: 'Ejemplo de sprite',
      link: '/sprite',
      icon: Icons.image_aspect_ratio_outlined),
];
