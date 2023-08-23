import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.red,
      height: size.height,
      width: size.width,
      child: const Center(child: Text("Sobre")),
    );
  }
}
