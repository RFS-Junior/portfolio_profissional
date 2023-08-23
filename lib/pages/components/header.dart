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
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
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
              child: const Text("Projetos Feitos"),
            ),
            MenuItemButton(
              onPressed: () => GoRouter.of(context).go('/conhecimentos'),
              child: const Text("Habilidades e Conhecimentos"),
            ),
            MenuItemButton(
              onPressed: () => GoRouter.of(context).go('/informacoes'),
              child: const Text("Informações Acadêmicas"),
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
