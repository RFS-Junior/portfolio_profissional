import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomWidgets {
  AppBar getAppBarMenu(String title, BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: [
        TextButton(
          onPressed: () => GoRouter.of(context).go('/'),
          child: const Text("Tela Inicial"),
        ),
        TextButton(
          onPressed: () => GoRouter.of(context).go('/projetos'),
          child: const Text("Projetos"),
        ),
        TextButton(
          onPressed: () => GoRouter.of(context).go('/conhecimentos'),
          child: const Text("Habilidades e Conhecimentos"),
        ),
        TextButton(
          onPressed: () => GoRouter.of(context).go('/informacoes'),
          child: const Text("Informações Acadêmicas"),
        ),
        TextButton(
          onPressed: () => GoRouter.of(context).go('/sobre'),
          child: const Text("Sobre"),
        ),
      ],
    );
  }
}
