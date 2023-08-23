import 'package:flutter/material.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.pinkAccent,
      height: size.height,
      width: size.width,
      child: const Center(child: Text("Tela Inicial")),
    );
  }
}
