import 'package:flutter/material.dart';

import 'components/header.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Header(title: "Sobre"),
          Center(
            child: Text("Sobre"),
          ),
        ],
      ),
    );
  }
}
