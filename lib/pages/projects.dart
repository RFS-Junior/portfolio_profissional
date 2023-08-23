import 'package:flutter/material.dart';

import 'components/custom_widgets.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidgets().getAppBarMenu("Projetos", context),
      body: const Center(
        child: Text("Body Projetos"),
      ),
    );
  }
}
