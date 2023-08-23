import 'package:curso_web/pages/components/header.dart';
import 'package:flutter/material.dart';

class AcademicInformation extends StatelessWidget {
  const AcademicInformation({super.key});

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
