import 'package:curso_web/pages/components/header.dart';
import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.red,
      height: size.height,
      width: size.width,
      child: const Center(child: Text("Projetos")),
    );
  }
}
