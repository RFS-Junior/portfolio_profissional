import 'package:curso_web/pages/components/header.dart';
import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Header(title: "Projetos"),
          Center(
            child: Text("Body Projetos"),
          ),
        ],
      ),
    );
  }
}
