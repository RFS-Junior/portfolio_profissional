import 'package:flutter/material.dart';

class SkillsKnowledgeSection extends StatelessWidget {
  const SkillsKnowledgeSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.purple,
      height: size.height,
      width: size.width,
      child: const Center(child: Text("Conhecimentos e Habilidades")),
    );
  }
}
