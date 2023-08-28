import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CarouselItem extends StatelessWidget {
  const CarouselItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.year,
    required this.titleButton,
    required this.location,
  });

  final String title;
  final String subtitle;
  final String year;
  final String titleButton;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      color: Colors.cyan[300],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 1,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Text(
                  title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              )),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  subtitle,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              )),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Center(
                      child: MaterialButton(
                        color: Colors.pink[600],
                        onPressed: () {
                          GoRouter.of(context).go(location);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15.0),
                          child: Text(titleButton),
                        ),
                      ),
                    )),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                            width: 70,
                            height: 35,
                            color: Colors.black54,
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(year),
                            ))),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
