import 'package:flutter/material.dart';

class AcademicInformationSection extends StatelessWidget {
  const AcademicInformationSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.blue,
      height: size.height,
      width: size.width,
      child: const Center(child: Text("Informações academicas")),
    );
  }
}
