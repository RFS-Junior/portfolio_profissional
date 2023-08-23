import 'package:curso_web/pages/components/header.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Header(title: "Sobre"),
          Center(
            child: Text("Body Sobre"),
          ),
        ],
      ),
    );
  }
}
