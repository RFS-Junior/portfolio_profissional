import 'package:curso_web/pages/components/header.dart';
import 'package:flutter/material.dart';

class AcademicInformation extends StatelessWidget {
  const AcademicInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Header(title: "Informações academicas"),
          Center(
            child: Text("Informações academicas"),
          ),
        ],
      ),
    );
  }
}
