import 'package:curso_web/pages/components/header.dart';
import 'package:flutter/material.dart';

class SkillsKnowledge extends StatelessWidget {
  const SkillsKnowledge({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Header(title: "Conhecimentos e Habilidades"),
          Center(
            child: Text("Conhecimentos e Habilidades"),
          ),
        ],
      ),
    );
  }
}
