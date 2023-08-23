import 'package:flutter/material.dart';

import 'components/custom_widgets.dart';

class AcademicInformation extends StatelessWidget {
  const AcademicInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidgets().getAppBarMenu("Informações Acadêmicas", context),
      body: const Center(
        child: Text("Body Informações Acadêmicas"),
      ),
    );
  }
}
