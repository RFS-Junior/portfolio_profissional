import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:go_router/go_router.dart';

import 'sections/about.dart';
import 'sections/academic_information.dart';
import 'sections/home.dart';
import 'sections/projects.dart';
import 'sections/skills_knowledge.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          pageBuilder: (context, state) => const MaterialPage(
            child: HomeApp(),
          ),
        ),
      ],
    );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}

var scaffoldKey = GlobalKey<ScaffoldState>();

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<GlobalKey> keys = [
      GlobalKey(),
      GlobalKey(),
      GlobalKey(),
      GlobalKey(),
      GlobalKey(),
    ];

    return Scaffold(
      key: scaffoldKey,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                HomeSection(key: keys[0]),
                ProjectsSection(key: keys[1]),
                SkillsKnowledgeSection(key: keys[2]),
                AcademicInformationSection(key: keys[3]),
                AboutSection(key: keys[4]),
              ],
            ),
          ),
          SizedBox(
            width: size.width,
            height: size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                MenuNavigation(keys: keys),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MenuNavigation extends StatefulWidget {
  const MenuNavigation({super.key, required this.keys});

  final List<GlobalKey<State<StatefulWidget>>> keys;

  @override
  State<MenuNavigation> createState() => _MenuNavigationState();
}

class _MenuNavigationState extends State<MenuNavigation> {
  int selection = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Column(
          children: [
            IconButton(
              onPressed: () async {
                setState(() {
                  selection = 1;
                });
                await Scrollable.ensureVisible(widget.keys[0].currentContext!,
                    duration: const Duration(milliseconds: 500));
              },
              icon: Icon(selection == 1
                  ? Icons.circle_outlined
                  : Icons.square_outlined),
            ),
            IconButton(
              onPressed: () async {
                setState(() {
                  selection = 2;
                });
                await Scrollable.ensureVisible(widget.keys[1].currentContext!,
                    duration: const Duration(milliseconds: 500));
              },
              icon: Icon(selection == 2
                  ? Icons.circle_outlined
                  : Icons.square_outlined),
            ),
            IconButton(
              onPressed: () async {
                setState(() {
                  selection = 3;
                });
                await Scrollable.ensureVisible(widget.keys[2].currentContext!,
                    duration: const Duration(milliseconds: 500));
              },
              icon: Icon(selection == 3
                  ? Icons.circle_outlined
                  : Icons.square_outlined),
            ),
            IconButton(
              onPressed: () async {
                setState(() {
                  selection = 4;
                });
                await Scrollable.ensureVisible(widget.keys[3].currentContext!,
                    duration: const Duration(milliseconds: 500));
              },
              icon: Icon(selection == 4
                  ? Icons.circle_outlined
                  : Icons.square_outlined),
            ),
            IconButton(
              onPressed: () async {
                setState(() {
                  selection = 5;
                });
                await Scrollable.ensureVisible(widget.keys[4].currentContext!,
                    duration: const Duration(milliseconds: 500));
              },
              icon: Icon(selection == 5
                  ? Icons.circle_outlined
                  : Icons.square_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
