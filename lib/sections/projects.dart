import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.yellow[100],
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                const Expanded(
                    flex: 1,
                    child: Center(
                      child: Text(
                        "Meus Projetos",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 35),
                      ),
                    )),
                Expanded(flex: 2, child: Container()),
              ],
            ),
          ),
          Expanded(
              flex: 4,
              child: CarouselSlider.builder(
                options: CarouselOptions(
                  height: 300,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                ),
                itemCount: 3,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        const CarouselItem(
                  title: 'TESTE1',
                  subtitle:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                  year: '2023',
                  location: '/',
                  titleButton: 'TESTE3',
                ),
              )),
          Expanded(
              flex: 1,
              child: Center(
                child: Container(
                  color: Colors.black87,
                  width: size.width * 0.7,
                  height: size.height * 0.015,
                ),
              )),
        ],
      ),
    );
  }
}

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
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                child: Text(
                  title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              )),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  subtitle,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
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
                        child: Text(titleButton),
                      ),
                    )),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 40,
                            height: 30,
                            color: Colors.black54,
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.all(4.0),
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
