import 'package:flutter/material.dart';

import 'components/custom_widgets.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomWidgets().getAppBarMenu("Tela Incial", context),
      body: const Center(
        child: Text("Body Tela Incial"),
      ),
    );
  }
}
