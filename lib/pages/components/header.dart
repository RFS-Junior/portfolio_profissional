import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        const Spacer(),
        MenuBar(
          children: [
            MenuItemButton(
              onPressed: () => GoRouter.of(context).go('/'),
              child: const Text("Tela Inicial"),
            ),
            MenuItemButton(
              onPressed: () => GoRouter.of(context).go('/projetos'),
              child: const Text("Projetos"),
            ),
            MenuItemButton(
              onPressed: () => GoRouter.of(context).go('/conhecimentos'),
              child: const Text("Conhecimentos e Habilidades"),
            ),
            MenuItemButton(
              onPressed: () => GoRouter.of(context).go('/informacoes'),
              child: const Text("Informações academicas"),
            ),
            MenuItemButton(
              onPressed: () => GoRouter.of(context).go('/sobre'),
              child: const Text("Sobre"),
            ),
          ],
        ),
      ],
    );
  }
}
