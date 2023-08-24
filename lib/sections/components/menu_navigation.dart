import 'package:flutter/material.dart';

class MenuNavigation extends StatefulWidget {
  const MenuNavigation({super.key, required this.keys});

  final List<GlobalKey<State<StatefulWidget>>> keys;

  @override
  State<MenuNavigation> createState() => _MenuNavigationState();
}

class _MenuNavigationState extends State<MenuNavigation> {
  int selection = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Column(
          children: [
            IconButton(
              color: Colors.black,
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
              color: Colors.black,
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
              color: Colors.black,
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
              color: Colors.black,
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
              color: Colors.black,
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
