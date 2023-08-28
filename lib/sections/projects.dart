import 'package:carousel_slider/carousel_slider.dart';
import 'package:curso_web/contants.dart';
import 'package:flutter/material.dart';

import 'components/carousel_item.dart';

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
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            fontSize: 50),
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
                    height: MediaQuery.of(context).size.width * 0.22,
                    viewportFraction: 0.33,
                    aspectRatio: 1.0,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    autoPlayInterval: const Duration(seconds: 6)),
                itemCount: Contants.projects.length,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        CarouselItem(
                  title: Contants.projects[itemIndex].title,
                  subtitle: Contants.projects[itemIndex].subtitle,
                  year: Contants.projects[itemIndex].periodic.year.toString(),
                  location: '/',
                  titleButton: 'GO',
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
