import 'package:flutter/material.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final List<String> chipData = [
      'Flutter',
      'Node.js',
      'Firebase',
    ];
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.red,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: CircleAvatar(
                        radius: MediaQuery.of(context).size.width * 0.07,
                        backgroundImage:
                            const ExactAssetImage("assets/images/profille.jpg"),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Ronivaldo Júnior",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Belém, Pará, Brazil",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 1.0,
                          mainAxisSpacing: 1.0,
                        ),
                        itemCount: chipData.length,
                        itemBuilder: (context, index) {
                          return Chip(
                            label: Text(chipData[index]),
                            backgroundColor: Colors.blue,
                            labelStyle: TextStyle(color: Colors.white),
                            padding: EdgeInsets.all(1.0),
                            elevation: 4.0,
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 20.0),
                    child: Text(
                      "Software developer",
                      style: Theme.of(context).textTheme.displayLarge,
                      textScaleFactor: MediaQuery.of(context).textScaleFactor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 120.0),
                    child: Text(
                      '''Estudante de Sistemas de Informação na Universidade Federal do Pará e profissional em Engenharia de Software, com foco em projetos web e mobile usando Flutter/Dart e Node.js. Como analista de sistemas, busco aprimorar constantemente minhas habilidades em modelagem com metodologias ágeis. Experiência em projetos de iniciação científica, desenvolvendo habilidades de pesquisa. Abordagem criativa e inovadora para agregar valor aos projetos. Comprometido com meu crescimento profissional e em contribuir para o sucesso dos projetos.''',
                      textAlign: TextAlign.justify,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const Spacer(),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.black,
                        size: 25,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.black,
                        size: 25,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
