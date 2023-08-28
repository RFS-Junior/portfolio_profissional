import 'package:flutter/material.dart';

import 'components/my_stacks.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.pink[200],
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          Expanded(
            flex: 12,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CircleAvatar(
                              radius: MediaQuery.of(context).size.width * 0.12,
                              backgroundImage: const ExactAssetImage(
                                  "assets/images/profille.jpg"),
                            ),
                          ],
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            "Ronivaldo Júnior",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 38,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Center(
                          child: SizedBox(
                            width: size.width * 0.11,
                            child: const MyStack(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Center(
                          child: Text(
                            "Desenvolvedor Full Stack",
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 80,
                                fontWeight: FontWeight.bold),
                            textScaleFactor:
                                MediaQuery.of(context).textScaleFactor,
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 3,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 80),
                          child: Text(
                            "Experiência em Engenharia de Software, tendo atuado em projetos de desenvolvimento de sistemas web e mobile. Utilizando tecnologias como Flutter/Dart para criar interfaces de usuário e Node.js para construir servidores eficientes.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(color: Colors.black, fontSize: 35),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            flex: 2,
            child: Column(
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
          ),
        ],
      ),
    );
  }
}
