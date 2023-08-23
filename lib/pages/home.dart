import 'package:curso_web/pages/about.dart';
import 'package:curso_web/pages/academic_information.dart';
import 'package:curso_web/pages/projects.dart';
import 'package:curso_web/pages/skills_knowledge.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey globalKey1 = GlobalKey();
    GlobalKey globalKey2 = GlobalKey();
    GlobalKey globalKey3 = GlobalKey();
    GlobalKey globalKey4 = GlobalKey();
    GlobalKey globalKey5 = GlobalKey();
    SectionHome sectionHome = SectionHome(key: globalKey1);
    Projects projets = Projects(key: globalKey2);
    SkillsKnowledge skillsKnowledge = SkillsKnowledge(key: globalKey3);
    AcademicInformation academicInformation =
        AcademicInformation(key: globalKey4);
    About about = About(key: globalKey5);

    ScrollController scrollController = ScrollController();
    List<Widget> sections = [
      sectionHome,
      projets,
      skillsKnowledge,
      academicInformation,
      about
    ];
    return Scaffold(
        body: CustomScrollView(
      controller: scrollController,
      physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          floating: true,
          snap: true,
          title: const Text("Tela Inicial"),
          actions: [
            TextButton(
              onPressed: () => Scrollable.ensureVisible(
                  globalKey1.currentContext!,
                  duration: const Duration(milliseconds: 600)),
              child: const Text("Tela Inicial"),
            ),
            TextButton(
              onPressed: () => Scrollable.ensureVisible(
                  globalKey2.currentContext!,
                  duration: const Duration(milliseconds: 600)),
              child: const Text("Projetos"),
            ),
            TextButton(
              onPressed: () => Scrollable.ensureVisible(
                  globalKey3.currentContext!,
                  duration: const Duration(milliseconds: 600)),
              child: const Text("Conhecimentos e Habilidades"),
            ),
            TextButton(
              onPressed: () => Scrollable.ensureVisible(
                  globalKey4.currentContext!,
                  duration: const Duration(milliseconds: 600)),
              child: const Text("Informações academicas"),
            ),
            TextButton(
              onPressed: () => Scrollable.ensureVisible(
                  globalKey5.currentContext!,
                  duration: const Duration(milliseconds: 600)),
              child: const Text("Sobre"),
            ),
          ],
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                child: sections[index],
              );
            },
            childCount: sections.length,
          ),
        ),
      ],
    ));
  }
}

class SectionHome extends StatelessWidget {
  const SectionHome({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.blue,
      height: size.height,
      width: size.width,
      child: const Center(child: Text("Home")),
    );
  }
}
