import 'package:curso_web/pages/components/header.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Header(title: "Tela Inicial"),
          Center(
            child: Text("Tela Inicial"),
          ),
        ],
      ),
    );
  }
}
