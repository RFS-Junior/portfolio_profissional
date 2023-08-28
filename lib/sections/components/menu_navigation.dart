import 'package:flutter/material.dart';

class MenuNavigation extends StatefulWidget {
  const MenuNavigation({super.key, required this.keys});

  final List<GlobalKey<State<StatefulWidget>>> keys;

  @override
  State<MenuNavigation> createState() => _MenuNavigationState();
}

class _MenuNavigationState extends State<MenuNavigation> {
  int selected = 1;

  List<IconButton> listMenuButton() {
    return [
      IconButton(
        color: Colors.black,
        onPressed: () async {
          setState(() {
            selected = 1;
          });
          await Scrollable.ensureVisible(widget.keys[0].currentContext!,
              duration: const Duration(milliseconds: 500));
        },
        icon:
            Icon(selected == 1 ? Icons.circle_outlined : Icons.square_outlined),
      ),
      IconButton(
        color: Colors.black,
        onPressed: () async {
          setState(() {
            selected = 2;
          });
          await Scrollable.ensureVisible(widget.keys[1].currentContext!,
              duration: const Duration(milliseconds: 500));
        },
        icon:
            Icon(selected == 2 ? Icons.circle_outlined : Icons.square_outlined),
      ),
      IconButton(
        color: Colors.black,
        onPressed: () async {
          setState(() {
            selected = 3;
          });
          await Scrollable.ensureVisible(widget.keys[2].currentContext!,
              duration: const Duration(milliseconds: 500));
        },
        icon:
            Icon(selected == 3 ? Icons.circle_outlined : Icons.square_outlined),
      ),
      IconButton(
        color: Colors.black,
        onPressed: () async {
          setState(() {
            selected = 4;
          });
          await Scrollable.ensureVisible(widget.keys[3].currentContext!,
              duration: const Duration(milliseconds: 500));
        },
        icon:
            Icon(selected == 4 ? Icons.circle_outlined : Icons.square_outlined),
      ),
      IconButton(
        color: Colors.black,
        onPressed: () async {
          setState(() {
            selected = 5;
          });
          await Scrollable.ensureVisible(widget.keys[4].currentContext!,
              duration: const Duration(milliseconds: 500));
        },
        icon:
            Icon(selected == 5 ? Icons.circle_outlined : Icons.square_outlined),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: listMenuButton(),
      ),
    );
  }
}
